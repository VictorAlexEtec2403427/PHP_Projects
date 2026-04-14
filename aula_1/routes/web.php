<?php

    use App\Http\Controllers\AlunoController;
    use Illuminate\Support\Facades\Route;



    // Rota principal para testar todos os relacionamentos
    Route::get('/testar-relacionamentos', [AlunoController::class, 'testarRelacionamentos']);

    // Rota para calcular média do aluno
    Route::get('/aluno/{id}/media', [AlunoController::class, 'calcularMedia']);


    // Rota para listar alunos por disciplina
    Route::get('/disciplina/{id}/alunos', [AlunoController::class, 'alunosPorDisciplina']);


    // Rota para demonstrar Eager Loading
    Route::get('/listar-alunos', [AlunoController::class, 'listarComEagerLoading']);

?>
