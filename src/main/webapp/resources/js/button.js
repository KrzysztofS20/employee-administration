function addSkill() {
    const div = document.createElement('div');
    var nameValue = document.getElementById("skillName").value.toUpperCase();
    var skillValue = document.getElementById("skillValue").value;
    div.innerHTML = `
    <span>${nameValue}</span>
 <span class="pull-right">${skillValue}%</span>
 <div class="progress">
   <div class="progress-bar" role="progressbar" style="width: ${skillValue}%;"
    aria-valuenow="${skillValue}" aria-valuemin="0" aria-valuemax="100">
</div>
   </div>
  `;

    document.getElementById('content').appendChild(div);
}

function removeRow(input) {
    document.getElementById('content').removeChild(input.parentNode);
}