# insertion sort

insertionSort <- function(x, ...) {
        if(is.numeric(x) == FALSE) {
                warning("Not a numeric array")
        }
        else {
                array <- x
                for(i in 2:length(array)) {
                        key <- array[i]
                        j <- i - 1
                        while(j > 0) {
                                if(array[j+1] < array[j]) {
                                        array[j+1] <- array[j]
                                        array[j] <- key
                                }
                                j <- j-1
                        }
                }
        }
        return(array)
}