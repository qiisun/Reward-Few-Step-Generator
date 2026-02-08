import torch
from diffusers import Flux2KleinPipeline

device = "cuda"
dtype = torch.bfloat16

pipe = Flux2KleinPipeline.from_pretrained("black-forest-labs/FLUX.2-klein-4B", torch_dtype=dtype)
pipe.enable_model_cpu_offload()  # save some VRAM by offloading the model to CPU

prompt = "A photo of a man"
image = pipe(
    prompt=prompt,
    height=512,
    width=512,
    guidance_scale=1.0,
    num_inference_steps=2,
    generator=torch.Generator(device=device).manual_seed(0)
).images[0]
image.save("flux-klein-2.png")
