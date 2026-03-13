#hf

pip install -U huggingface_hub
export HF_ENDPOINT=https://hf-mirror.com
huggingface-cli download --resume-download <model_name> --local-dir <local_dir> --local-dir-use-symlinks False
huggingface-cli download --repo-type dataset --resume-download <dataset_name> --local-dir <local_dir> 

