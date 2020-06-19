

boxplot(shap_inbag_avg,col=rgb(0,0,1,0.5), outcol=rgb(0,0,1,0.5),pch=20,cex=0.75, ylab = "Inbag SHAP");grid()
boxplot(shap_oob_avg,col=rgb(0,0,1,0.5), outcol=rgb(0,0,1,0.5),pch=20,cex=0.75, ylab = "Outbag SHAP");grid()
#means = colMeans(mdiScore2[[4]]);points(means,col="red",pch=18)
shap_inbag_wght = shap_inbag_avg
shap_oob_wght = shap_oob_avg

for (i in 1:4) {
  shap_inbag_wght[,i] = Y_train*shap_inbag_avg[,i]
  shap_oob_wght[,i] = Y_train*shap_oob_avg[,i]
}

boxplot(shap_inbag_wght,col=rgb(0,0,1,0.5), outcol=rgb(0,0,1,0.5),pch=20,cex=0.75, ylab = "Inbag SHAP");grid()
means = colMeans(shap_inbag_wght);points(means,col="red",pch=18)
boxplot(shap_oob_wght,col=rgb(0,0,1,0.5), outcol=rgb(0,0,1,0.5),pch=20,cex=0.75, ylab = "Outbag SHAP");grid()
means = colMeans(shap_oob_wght);points(means,col="red",pch=18)
