Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ACB4ECDEB85
	for <lists+linux1394-devel@lfdr.de>; Fri, 26 Dec 2025 14:13:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jymAuCA4hIJkXDiM3Sqp4m2hbfSlotZK99Y5Ud2VJwI=; b=I421pTmSYvxlneOJgCwxbu4FS3
	uS4/R9aOZj/TK/DnbaYz48EDTAEgxZWGIr+PwQlAbWX8GD/VrfY/g7p63E1Vxc36+wv4V9wSGSjSc
	dj4eyU3IOAWWtEmBamG0QoNUGeOQoe67h7TsQU6q8527Ko2BQSbM7OCyA0+suywQ/slg=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1vZ7co-0001iH-LE;
	Fri, 26 Dec 2025 13:12:58 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1vZ7cm-0001i5-8O
 for linux1394-devel@lists.sourceforge.net;
 Fri, 26 Dec 2025 13:12:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Oq7hNBJavDd7H1kbBqAHdc8emxTbM5vnCPrdYut2e0s=; b=hk7RoviIyN9xSAM31ocP9hI3Pd
 O+sqANPCM8Ddfywzd4J4S3aIjrHyB41zB0xx48C566iXhCfeLl6xw7bBqtAA4w70Vwdk2izHgRDSZ
 y3ep7ust0cIQwdQZnYcSjUb77QeARCER0k6/hRp6BzghRQu2PLm7MyRk2TRaIeOSlTJY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Oq7hNBJavDd7H1kbBqAHdc8emxTbM5vnCPrdYut2e0s=; b=J1N8BzdJLHhG7hNvemCG5Wy/iG
 2epUucM+Zp1iVwP9XvxGDNEKDduCqTihOo2VuKIPyRQWF86Qd/gdPLfdt0YDz95XFtRGqmijRMUgH
 7KchAkEPyCGGw8Cr2pmF3OlsZrrw+usdiTV+db6oU3INMs1p7UxxAPzTBQlX1j3BLBqA=;
Received: from fhigh-b8-smtp.messagingengine.com ([202.12.124.159])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vZ7ck-0005jp-Ux for linux1394-devel@lists.sourceforge.net;
 Fri, 26 Dec 2025 13:12:56 +0000
Received: from phl-compute-03.internal (phl-compute-03.internal [10.202.2.43])
 by mailfhigh.stl.internal (Postfix) with ESMTP id 4335E7A006A;
 Fri, 26 Dec 2025 08:12:49 -0500 (EST)
Received: from phl-frontend-04 ([10.202.2.163])
 by phl-compute-03.internal (MEProxy); Fri, 26 Dec 2025 08:12:49 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:content-type
 :date:date:from:from:in-reply-to:in-reply-to:message-id
 :mime-version:references:reply-to:subject:subject:to:to; s=fm1;
 t=1766754769; x=1766841169; bh=Oq7hNBJavDd7H1kbBqAHdc8emxTbM5vn
 CPrdYut2e0s=; b=K4A5x3t/naqDVkiFlPjAPyf5KDwKiJMMJBAgYVBh+gpfrtc6
 wNUmFyQmUaUP4Aru9TyJu8EYuDjW0W9N6cSV1OZRezCjTZvwiiuHWYT/4YK0Gg67
 o+/4TVM5K/Z5sMTVTPU58v8LwO6QU2a9DfrCJFH2bhDEE0wPefgYmAlwP/mDsNBP
 zFZSWP/cYAMUlVoGlKhZkBhoRM22DpXStHYxRLAxfrDL5jrqvlmjUBrhSeEc3Jx/
 KaRZCtitKlg+nVARvytvUD93NM0Oy36GG0mpoCpMtHeZN6f24tnakKIbV5fq51dL
 hPldRoQ7L+uffajUsYZQ5wudl6gf4dgGR8M6qw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1766754769; x=
 1766841169; bh=Oq7hNBJavDd7H1kbBqAHdc8emxTbM5vnCPrdYut2e0s=; b=i
 mQmz6vFnD1IqZ1+qm2tXZ/ous1SRwuBArD0EV914tFYHWz2fy0zf7PUZtay1epf7
 SODs9wuPNcIgY8hfnFd3n6EZZevMoX3QQm6gsHsRzmsZ1bTYGO6m7k+dvDG5BpmE
 hvHz3J1JXAyJg6zkw3ATGtBZwpVvuJP6qYYEHxkAOin6r3+oUIxkPADLxoWiEH+d
 3brUC7r9hyO3SzXCq2OpcJp4+c3Pd758xwSTpKLBvMsO8R8+yEcuCaQRqu8S9KgW
 nFgPsRPIqk0n0T+SaqhkM/pSDKiRslcENpr9MXHW4Pg3sUrxFTp+nXF0oH+YmFVu
 CCrGt5I+rZ6ss91nIRtxQ==
X-ME-Sender: <xms:0IlOaW-89T_vVbh3RDLL-x4l2nwrp6DEgkdh9bClEF6y8Gr345vPsg>
 <xme:0IlOaUgDYdQZL-Am3OeDhcANbn9dn9S3WYb-cah7vueNZfw_L6OBaNuPAxfz7Zn1c
 dJhANRhH8mreSitg2ZGagbq7djInn1F2lX5llkhQlk8Be_9Cw-lQCs>
X-ME-Received: <xmr:0IlOaWdL4rkFEnNs-F02uFsHxnQWwGQg8noMAwgs69MDz8ZvRDjthOCpbm7H4kZ14Yt1-2uM8ZHndHn0C39mwCihHJx1eVx9VQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgdeikeehhecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
 ihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjug
 hrpeffhffvvefukfhfgggtugfgjgesthekredttddtudenucfhrhhomhepvfgrkhgrshhh
 ihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjph
 eqnecuggftrfgrthhtvghrnhepgeejteekhfejteeiffelleffhefgieffkefhleeujeff
 keeiuedvieegfeffieelnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucevlhhush
 htvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhi
 sehsrghkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopeegpdhmohguvgepshhmth
 hpohhuthdprhgtphhtthhopehfohhurhhivghrrdhthhhomhgrshesghhmrghilhdrtgho
 mhdprhgtphhtthhopegthhhrihhsthhophhhvgdrjhgrihhllhgvthesfigrnhgrughooh
 drfhhrpdhrtghpthhtoheplhhinhhugidufeelgedquggvvhgvlheslhhishhtshdrshho
 uhhrtggvfhhorhhgvgdrnhgvthdprhgtphhtthhopehlihhnuhigqdhkvghrnhgvlhesvh
 hgvghrrdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:0IlOabryopgk9XqG9xotr5_e8x9y_PBSs4Gxtf2zkDKUz9k1hWG7_g>
 <xmx:0IlOabCI1_qH5hik433Cr0rRSf4OUmg6nDc8kF3Jzwx6US01GoWoPA>
 <xmx:0IlOaYY5ADC25AKrx9haLwR225tvEoGaar_SmXW_oNw5nTlEXbJaJQ>
 <xmx:0IlOae50YYIvvyRUs0TihzDdZBWayXRLjliaArUmDzF9I7s1oEb8iA>
 <xmx:0YlOaU776l_-A2IsTYnPhCIia4nlL5SQzvQdEbBvczEE8OEpYN6mKSi5>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 26 Dec 2025 08:12:47 -0500 (EST)
Date: Fri, 26 Dec 2025 22:12:45 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Thomas Fourier <fourier.thomas@gmail.com>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Subject: Re: [PATCH] firewire: nosy: Fix dma_free_coherent() size
Message-ID: <20251226131245.GA92232@workstation.local>
Mail-Followup-To: Thomas Fourier <fourier.thomas@gmail.com>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org
References: <20251216165420.38355-2-fourier.thomas@gmail.com>
 <7ffdcfff-0f2f-4563-9051-d398f3c5c6a7@wanadoo.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7ffdcfff-0f2f-4563-9051-d398f3c5c6a7@wanadoo.fr>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "sfi-spamd-1.hosts.colo.sdot.me",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi, On Tue, Dec 16, 2025 at 06:47:30PM +0100, Christophe JAILLET
    wrote: > Le 16/12/2025 à 17:54, Thomas Fourier a écrit : > > It looks like
    the buffer allocated and mapped in add_card() is done > > with [...] 
 
 Content analysis details:   (-0.2 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
X-Headers-End: 1vZ7ck-0005jp-Ux
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
Cc: linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

On Tue, Dec 16, 2025 at 06:47:30PM +0100, Christophe JAILLET wrote:
> Le 16/12/2025 =E0 17:54, Thomas Fourier a =E9crit=A0:
> > It looks like the buffer allocated and mapped in add_card() is done
> > with size RCV_BUFFER_SIZE which is 16 KB and 4KB.
> > =

> > Fixes: 286468210d83 ("firewire: new driver: nosy - IEEE 1394 traffic sn=
iffer")
> > Signed-off-by: Thomas Fourier <fourier.thomas@gmail.com>
> =

> Reviewed-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
> =

> And for the records, see [1].
> =

> CJ
> =

> [1]: https://lore.kernel.org/lkml/20200625191554.941614-1-christophe.jail=
let@wanadoo.fr/
> =

> > ---
> >   drivers/firewire/nosy.c | 10 +++++-----
> >   1 file changed, 5 insertions(+), 5 deletions(-)

Applied to for-linus branch[1], with my handy modification for the place
of the macro, using 'Co-developed-by' tags with all of you. I'll send it
to mainline in this weekend so that it will be included in v6.19-rc3.


[1] https://git.kernel.org/pub/scm/linux/kernel/git/ieee1394/linux1394.git/=
log/?h=3Dfor-linus

Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
