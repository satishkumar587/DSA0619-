# Dataset

hospital <- data.frame(
  Patient_ID = c(1,2,3,4,5),
  Age = c(25,40,35,50,29),
  Waiting_Time = c(2,5,1,7,3),
  Appointment_Status = c(
    "Attended",
    "Missed",
    "Attended",
    "Missed",
    "Attended"
  )
)

print(hospital)



hist(hospital$Age,
     main="Histogram of Patient Age",
     xlab="Age",
     col="blue",
     border="black")


status <- table(hospital$Appointment_Status)

pie(status,
    main="Appointment Status",
    col=c("green","red"))


barplot(hospital$Waiting_Time,
        names.arg=hospital$Patient_ID,
        main="Waiting Time by Patient",
        xlab="Patient ID",
        ylab="Days",
        col="orange")


plot(hospital$Age,
     hospital$Waiting_Time,
     main="Age vs Waiting Time",
     xlab="Age",
     ylab="Waiting Time",
     pch=19,
     col="blue")