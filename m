Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E0D021DAAA9
	for <lists+linux1394-devel@lfdr.de>; Wed, 20 May 2020 08:34:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1jbIJ7-0000Zt-3K; Wed, 20 May 2020 06:34:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1jbIJ5-0000Zk-BV
 for linux1394-devel@lists.sourceforge.net; Wed, 20 May 2020 06:34:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3XNYaKnp2YGCe91EplwF85srPK86i5OIm/TZfO+r/A4=; b=KWVBFUdAnfSxV6XNXYJovIblCa
 fexlsi9bfsKL91JG9KHAYA/qfTkQqwHdBfUD5HTiGRJA64FRergMgo6sMM+JnJZiKauVqgYWK0fek
 gIVmotd4HgxlAmLQbXd3L6DHe2NBF6/3COCAtW58WD6AUCeHMSH7eBLqgAk2AMWpc514=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3XNYaKnp2YGCe91EplwF85srPK86i5OIm/TZfO+r/A4=; b=HBUT13c0R9CZPxBEqSeit/htoN
 Lfgzhan0WaeE/EopHjVs7NN2P7Qk+X+auTwsLAXx7oOVHTlXZgW28fxECo8/DxN7/wnhNh3aYFvBt
 XpRM0I+3sA+26Z3aO7vBBvU7TbVvwQ49T1Vzfm4H+4bbZn5HkboImFIxn7t4B9X4mrIE=;
Received: from wnew4-smtp.messagingengine.com ([64.147.123.18])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jbIJ0-00GFW2-Sa
 for linux1394-devel@lists.sourceforge.net; Wed, 20 May 2020 06:34:23 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
 by mailnew.west.internal (Postfix) with ESMTP id 4A81EC4E;
 Wed, 20 May 2020 02:16:35 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute2.internal (MEProxy); Wed, 20 May 2020 02:16:36 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=3XNYaKnp2YGCe91EplwF85srPK8
 6i5OIm/TZfO+r/A4=; b=boZgr2GGEoSCPOnQyY7adWYwLGs6cKNwB4tPIHroF9Q
 6nBi0D14HFNTaPEDK3mIToWgpFD/SoE7jIoA7nd1Ehuqfj2nkYSu+jP+xit2P2md
 XyTPT8i1+WR8EI2wlndxzZ0JCoY2jwiZnEzCWg0NvPuRyoDazEcAnX0KRzebYOeh
 EVRIWQ0WD1GjnazMVjqf/Ab6PxSId5ikiYxDPAipIlx+4a5HXOeE1cQFGijcK+4Z
 ro7MyN64kh82CxC5mgEKPkcegXkk23zwMsIVa12ZzhglXUSQa+C08eKEbhYQ3M8h
 svQd995a84sj/zPAqYjaoID1dZyUcdtTmLgXBJ1n/1g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=3XNYaK
 np2YGCe91EplwF85srPK86i5OIm/TZfO+r/A4=; b=kvz2/WezRA3U7KeAYIoye/
 GsK/JdQkFZfgnTnjy2U5r+nWxYV6BqcjDpSfSvImK33U8NDqHQjjWgIddB9ItzE5
 VQoDX9qFU83BCNZmvLoTQJxyRMkt/SBkeuaDt6CGdf22EfiLsSvhWCjXL0WoaOWk
 G5jP6/vgh7y54m0i6/oDos61fHKztdduCD99IIrEyuVmehl96QhRMEnhO2T+4zxM
 mrEi/nZR2z10IjvG0j3QEp6j/7Tf+5KyCS0BRWTIBwlN0LIkwsudGJ9r4vB+Kz9F
 mWRnnA6e+WTUa1SICCmLKb+BxjRygr+OCe+Nvn1RFo54RJDyhj0Q4OjeYX7twCiw
 ==
X-ME-Sender: <xms:PMvEXtybO761tUOfUtM1Uqz2bHplKGTEmVGoIF0G3kzcLSXeGp8BQQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddtkedguddtvdcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepvfgrkhgr
 shhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhird
 hjpheqnecuggftrfgrthhtvghrnheplefhueegvdejgfejgfdukeefudetvddtuddtueei
 vedttdegteejkedvfeegfefhnecukfhppedukedtrddvfeehrdefrdehgeenucevlhhush
 htvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhi
 sehsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:PMvEXtQgL0xVSCOkaJchdgOBsjqZ2eLoEvsuUCzy-o2rOR9gqAeSCg>
 <xmx:PMvEXnXKX9pr1U5wgNkSMjZe8QCjXPg31XSMjzBCpwtmJubMfnKZXw>
 <xmx:PMvEXvi9bWn-4QBYxqXPK1RYyfQElyNhwIe9R9yz2xMB1_c_Ji2mjg>
 <xmx:QsvEXrtMztEFg7yl7BxqGmfpINuyC9xWvXo4xPA7p_oJD80NbveZlEi0-BA>
Received: from workstation (ad003054.dynamic.ppp.asahi-net.or.jp
 [180.235.3.54])
 by mail.messagingengine.com (Postfix) with ESMTPA id 42D9C3066434;
 Wed, 20 May 2020 02:16:26 -0400 (EDT)
Date: Wed, 20 May 2020 15:16:24 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Oscar Carter <oscar.carter@gmx.com>
Subject: Re: [PATCH v2] firewire: Remove function callback casts
Message-ID: <20200520061624.GA25690@workstation>
Mail-Followup-To: Oscar Carter <oscar.carter@gmx.com>,
 Kees Cook <keescook@chromium.org>,
 Stefan Richter <stefanr@s5r6.in-berlin.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Clemens Ladisch <clemens@ladisch.de>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 kernel-hardening@lists.openwall.com,
 linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, alsa-devel@alsa-project.org,
 "Lev R . Oshvang ." <levonshe@gmail.com>
References: <20200519173425.4724-1-oscar.carter@gmx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200519173425.4724-1-oscar.carter@gmx.com>
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jbIJ0-00GFW2-Sa
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
 Kees Cook <keescook@chromium.org>, kernel-hardening@lists.openwall.com,
 linux-kernel@vger.kernel.org, Takashi Iwai <tiwai@suse.com>,
 Jaroslav Kysela <perex@perex.cz>, "Lev R . Oshvang ." <levonshe@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

On Tue, May 19, 2020 at 07:34:25PM +0200, Oscar Carter wrote:
> In an effort to enable -Wcast-function-type in the top-level Makefile to
> support Control Flow Integrity builds, remove all the function callback
> casts.
> 
> To do this, modify the "fw_iso_context_create" function prototype adding
> a new parameter for the multichannel callback. Also, fix all the
> function calls accordingly.
> 
> In the "fw_iso_context_create" function return an error code if both
> callback parameters are NULL and also set the "ctx->callback.sc"
> explicity to NULL in this case. It is not necessary set to NULL the
> "ctx->callback.mc" variable because this and "ctx->callback.sc" are an
> union and setting one implies setting the other one to the same value.
> 
> Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
> ---
> Changelog v1->v2
> -Set explicity to NULL the "ctx->callback.sc" variable and return an error
>  code in "fw_iso_context_create" function if both callback parameters are
>  NULL as Lev R. Oshvang suggested.
> -Modify the commit changelog accordingly.
> 
>  drivers/firewire/core-cdev.c        | 12 +++++++-----
>  drivers/firewire/core-iso.c         | 14 ++++++++++++--
>  drivers/firewire/net.c              |  2 +-
>  drivers/media/firewire/firedtv-fw.c |  3 ++-
>  include/linux/firewire.h            |  3 ++-
>  sound/firewire/amdtp-stream.c       |  2 +-
>  sound/firewire/isight.c             |  4 ++--
>  7 files changed, 27 insertions(+), 13 deletions(-)

I'm an author of ALSA firewire stack and thanks for the patch. I agree with
your intention to remove the cast of function callback toward CFI build.

Practically, the isochronous context with FW_ISO_CONTEXT_RECEIVE_MULTICHANNEL
is never used by in-kernel drivers. Here, I propose to leave current
kernel API (fw_iso_context_create() with fw_iso_callback_t) as is.
Alternatively, a new kernel API for the context (e.g.
fw_iso_mc_context_create() with fw_iso_mc_callback_t). This idea leaves
current drivers as is and the change is done inner firewire-core driver,
therefore existent kernel API is not changed.

Later I post two patches for the proposal. I'd like you to review it and
I'm glad to receive your comments.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
