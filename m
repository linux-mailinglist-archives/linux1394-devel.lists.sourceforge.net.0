Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 246D01D9D65
	for <lists+linux1394-devel@lfdr.de>; Tue, 19 May 2020 19:00:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1jb5bf-0006GZ-Qc; Tue, 19 May 2020 17:00:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <oscar.carter@gmx.com>) id 1jb5be-0006GS-KE
 for linux1394-devel@lists.sourceforge.net; Tue, 19 May 2020 17:00:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=om7LCEuWXeDBUQopEccNkeZj6oLy/bTivkYTc0FY2BM=; b=N5gn4a+eFKAoEk0OBMC6OgnECn
 e4L6kvx7LcOHiuuOL2NtkBcRQx+XHwONq4ZySN368mvT3wwh6Bg2H34tL8F/ZMIbBFKHFJfQ5G/Rg
 +SaAGst8Mo1LRB5oDSKrLAzG5OZOerOZNmGaSKhcp8gd92OzU1UtYlIqQwpKTEpZX2tI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=om7LCEuWXeDBUQopEccNkeZj6oLy/bTivkYTc0FY2BM=; b=JA+6SNbc3baBeh2h6IzhCsLUD7
 7p+3RezjRpdNCymqQwPWPM/DQr7SGEqOhCHddTcZS5f71RGr/PL3gc2iCO6gXRgCRTl164HShs2hb
 42xa74M2LQBdULh686woSeib7t5XuQnHEEGWy8ZV/xXUV4cGyenXkQITgnK16hD19U5Q=;
Received: from mout.gmx.net ([212.227.15.19])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jb5bc-007dg8-NK
 for linux1394-devel@lists.sourceforge.net; Tue, 19 May 2020 17:00:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1589907565;
 bh=3kGcF2WlvSw8bGxCId+mveFxPfrt8ZeCxWDEYopxkLg=;
 h=X-UI-Sender-Class:Date:From:To:Cc:Subject:References:In-Reply-To;
 b=lFVFyUueNYbCYsI0ZHKMplHkSj7COiLcPsjC5WeypZ85z5RuwMJoLXrNagwHjaLt/
 6pHKCXDP5KNdQTjLIFvtOlekjuJR/4y16giJA0ru822y73F9FxLRK6EOsN7DkPw1u/
 X02r1LjB+YBY5wDyKGFxulFg8y//f4lPhEePY4Dg=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from ubuntu ([83.52.229.196]) by mail.gmx.com (mrgmx004
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1M7b6l-1jgrPk0ZEj-007zZt; Tue, 19
 May 2020 18:59:25 +0200
Date: Tue, 19 May 2020 18:59:11 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: "Lev R. Oshvang ." <levonshe@gmail.com>
Subject: Re: [PATCH] firewire: Remove function callback casts
Message-ID: <20200519165910.GA3187@ubuntu>
References: <20200516173934.31527-1-oscar.carter@gmx.com>
 <CAP22eLF2Q3O+=tnHRKE5q=jn9gw2G1rjAKiewM4qGsf4WYvP0Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAP22eLF2Q3O+=tnHRKE5q=jn9gw2G1rjAKiewM4qGsf4WYvP0Q@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Provags-ID: V03:K1:0J0WtcfxzxFR84Tcrgx30v/9Nawjh8IZRpCrftihGrTqQzOKRSG
 PitIITQ6EIR4P7ZxPWADYT+xpl4GjpOv305jmagTza1M8Smuw8See9+u4kx7K1qZ81u10vx
 XaV4hQ6f6gcisxdp+ifA0bu5KH39ciBB/QtgLw7+JCSSpvr3Nv1T4keImRi+O3dI8l3yqtl
 mNS3zOx8oYUGTJUa7u2+A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:eD9m8/+8xhQ=:+q/C9d6cPE4qJiSZKCXvO4
 hWf4bTDr2rlIi6H5bRDj/GDab724U/FkITmQ/UloFTuJOV3Mbz4mzbFsQTskz8772li9wi/Hi
 E4sgR45NS5HBJfRIkcA4JYYVU65xsTQ4ugZLWCOi+vPuGC+v3i9acpkWGIBbMFi1HV/4Gva0a
 p0fD221QzTcOpecD/5MjeQPAaxWp9ICimNaGg5UD2XOQYu6O5zAicpI1OSBCbSf7QJ3w5Ap7j
 mT3zTR8ytagSBDuQG/7u80PhUhcv5g2Kizu0gJ+/X2kt9yPgT1F9jpKeAFPs1imn0uHX3Ip/s
 VWgtCNhP8+LSGBGQsPE0pCry5S7p0XWVqAYDDtRT6gMQvQE1QqXbe2QB6YPqLEJSIj0XqM5vV
 gft2LtAVZJ+Pbd5lzlKXHgYA3TZTsNBrHJHy+xvY5+t7jyP19zpKadRyfWCep2yGfuY/dg7Uz
 sgBQ+sL/kEGzNn6iYf5wok67j0xrYmEncwuDspB6H/AYbgw65md4p/Swqh48p0ddm0CaqfN+U
 edtsUZXYXyBZ367B2DLmtJMQQDk6uZeZ8KuPmKpWL6vKFKmJxV8a0VCXUVgfEXfosV5k0yD85
 AMdv2BDbY72OgD6FRARq/qp1+vbzXfndCRh9LieUeZAzgZy1tC+oPjB/B4xuzSpr3Kca5tR+C
 5IElLwr4XTb/83IW6f2SZWHakY/7AgBjdxS15audEE+mStXOoOmWW2fg39O2L7QoYuC3M46ky
 8mUEILgywUyiHFFHokEUiGtajfr3JghGqvISBS3raZX15r76DkNBIt63OpuiQL0wJMBAJE4ue
 eyC+TH8S3AfhZLGxjKyDve9XvVm02agPaJU+hEsKMMPtYpikeNx/QRUTm2wxcFzEl45WpxnYO
 N/ZOmCvEu6ui6i8j8I7PPuxDim2r49HUwbnByQOnikctTz8B4p7rJdKEmXfyfUfTxpQKmNkPx
 1JMM4Xcqu8rQGswIwaCy4AU8PS2YLng32qVg/+SdCycp2q1TLo/XWJ5VRUa0NulIYVpevya2j
 3k+26flYB4idzhAzjVrXeRlYRpkqzCGbModPIj0Dx9N1I1NAJ69ED+//SazqHz1HtK8DcHGN0
 F9IK+DXYYbJgD40g2uIL0J+BLNbk2LL+j6zCakssiYjbP6eIAJmJaI3cQqwWlKTRHzPSqqP4U
 8YntOafyXiCt8Sc4llHHjcMNlkaIB1N0JoQkW9Yk/9j1tc2RiXr4rBv17nCleJ6Br9VQm2n8Q
 0Q6DtG455oyXZtWN4
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (oscar.carter[at]gmx.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.15.19 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jb5bc-007dg8-NK
X-BeenThere: linux1394-devel@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux IEEE 1394 development list
 <linux1394-devel.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=linux1394-devel>
List-Post: <mailto:linux1394-devel@lists.sourceforge.net>
List-Help: <mailto:linux1394-devel-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=subscribe>
Cc: alsa-devel@alsa-project.org, linux1394-devel@lists.sourceforge.net,
 Oscar Carter <oscar.carter@gmx.com>, Kees Cook <keescook@chromium.org>,
 kernel-hardening@lists.openwall.com, linux-kernel@vger.kernel.org,
 Takashi Iwai <tiwai@suse.com>, Jaroslav Kysela <perex@perex.cz>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On Sun, May 17, 2020 at 07:43:21PM +0300, Lev R. Oshvang . wrote:
>
> Hi Oscar,
> I would recommend to explicitly set NULL to _cb and use if elif to
> exclude the case where botm _cb paraneters are passed as NULLs :
> > +
>   ctx->callback.mc =NULL:
>   ctx->callback.sc = NULL;
> > +       if (cb_sc)
> > +               ctx->callback.sc = cb_sc;
>
> > +       elif (cb_ms)
> > +               ctx->callback.mc = cb_mc;
> > +         else
>                     return -EINVAL;

Ok, I will do the changes you suggested and I will resend a new version.

> Hope you get the point.
> Lev

Thanks,
Oscar Carter


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
