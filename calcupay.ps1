try {
    # Pedir cantidad al usuario
    $montot = Read-Host "Introduce la cantidad que deseas enviar"

    # Convertir montot a número decimal para cálculos
    $montot = [decimal]$montot

    # Asignar valores de comisión y tasa
    $valorcomision = 5.78 / 100
    $valortasafee = 0.30

    if ($montot -eq 10){

    $valorcomision = 5.9 / 100    

    }

    # Calcular la comisión total y el total a enviar
    $comisiontotal = ($montot * $valorcomision) + $valortasafee
    $resultadototal = $montot + $comisiontotal

    # Imprimir resultado
    Write-Output ("Para enviar {0} USD debes enviar {1:N2}" -f $montot, $resultadototal)
} catch {
    Write-Error "Ocurrió un error: $_"
}

# Pausa al final del script
Read-Host "Presiona Enter para salir"
