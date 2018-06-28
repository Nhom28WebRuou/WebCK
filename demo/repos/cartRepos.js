exports.add = (cart, item) => {

    for (i = cart.length - 1; i >= 0; i--) {
        if (cart[i].maSP === item.maSP) {
            if(cart[i].soluong ==0)

                cart[i].soluong =0;
            cart[i].soluong += item.soluong;
            return;
        }
    }
    cart.push(item);
}

exports.sub = (cart, item) => {
    for (i = cart.length - 1; i >= 0; i--) {
        if (cart[i].maSP === item.maSP) {
            cart[i].soluong -= item.soluong;
            if(cart[i].soluong<0)
                cart[i].soluong=0;
            return;
        }
    }
}


exports.remove = (cart, proId) => {
    for (var i = cart.length - 1; i >= 0; i--) {
        if (proId === cart[i].maSP) {
            cart.splice(i, 1);
            return;
        }
    }
}


