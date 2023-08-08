variable "name" {
    type = string
    description = "Nome do projeto do Gitlab"
}
variable "description" {
    type = string
    description = "Descricao do projeto do Gitlab"
}
variable "visibility" {
    type = string
    description = "Descricao da visibilidade do Gitlab"
    default = "public"
}
