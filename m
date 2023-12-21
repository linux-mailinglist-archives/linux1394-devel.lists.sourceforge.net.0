Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C0BC81B715
	for <lists+linux1394-devel@lfdr.de>; Thu, 21 Dec 2023 14:13:26 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rGIrQ-0000bt-PM;
	Thu, 21 Dec 2023 13:13:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rGIrO-0000bl-Mc
 for linux1394-devel@lists.sourceforge.net;
 Thu, 21 Dec 2023 13:13:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uXnfqe1/rU5Aj6adZ7mG3BFBjzWeNfv+XHLSvTxStnE=; b=ZwkT4abJZLY8+MmJ2LKhswyoem
 4eCextdvwmhm/LB4SqCl8sm+Oz06BQaJoNVjjZcChQZPsxApZTKDM1UQBVZN15c/1F826wTq26WIt
 F17gEXSD5Xim+6FnoRB7DqntiJ7G7AyZPA8pMnvB86UmmWIOy9ekR9SdzsaodrsfDHE4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uXnfqe1/rU5Aj6adZ7mG3BFBjzWeNfv+XHLSvTxStnE=; b=DRcz0EI38dYWZSxPHCbwlOWA9f
 AO+pOSwKYTDxq1zfpE373W18J90HG88HIu5dTLHdWRexhDruqosKx3CjnbrK1mbA1WNq7s/J6hQ6h
 aVOswiZfSrH1lxmp3ooZhzC2ut1+qqIk3Kp60I5bKi3yMaCIpcy4sd3c9xnGJgfhvSZg=;
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rGIrK-0000eM-8m for linux1394-devel@lists.sourceforge.net;
 Thu, 21 Dec 2023 13:13:10 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailout.nyi.internal (Postfix) with ESMTP id 0BAFA5C026A;
 Thu, 21 Dec 2023 08:12:53 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute1.internal (MEProxy); Thu, 21 Dec 2023 08:12:53 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1703164373; x=
 1703250773; bh=uXnfqe1/rU5Aj6adZ7mG3BFBjzWeNfv+XHLSvTxStnE=; b=G
 UnH9Qt/FUEQiuy1jgaUF7A+hqkfFqCPgGsoaMkD5JMh3gjjmjoYsGPvDX18PZ4QB
 p6gyDyhd33voMPf9ri06Fkyet3aG/wtt06N+Q7lewMrv+6tKLlpS6tREuUmlHsi+
 x65oQeKjHi2EeLGHUC5SE5KY9xITbCCkmjQki47voqxu02BHQHNTGTGkYzjtauvW
 Yz708NY4lA2j2v1NxmBJD0sTVXY2rijhYrbBbwFrqjazRL661A2IMuXK/Fq+Cay5
 Ev9DeSFS08Phni23dKduuZNNoMF9OfkUW90XypuouVwNPcK11KPPcdxa+G7LNKJQ
 18ig3Zt39cuq7NBrdGfKQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; t=1703164373; x=1703250773; bh=uXnfqe1/rU5Aj6adZ7mG3BFBjzWe
 Nfv+XHLSvTxStnE=; b=p7M16dhp0a4dq8aSnsYzOggQ2rkPmBWvRLD8p4iIYRzV
 ORQgsO6UyMk0smn+csU7OG+i5SCyMfdS8DdMWBjXUkUcgWWRpt5jjESfHScWkulg
 zNYiuijuHBldwMMvxz3ZTKja3ki5sfYf7LJ1OTkvJakfDvvZadYuQmLAAv48WZJL
 nAHXX4+yKxToDU1lupJXQbkPvWH0q1OSHo0PvtRoqAnwaY23rU8q88FMnUJFkRIN
 H7Zmo5kZvSAdSPPCH8hnyQXrsgQ3ygGtTPKqWfE2X95C9lqDSN8tvKAEz+ZDuLQk
 sbiWKPTuDbNR0/SXCKroQd/8IFkNmG8EklTU425yqw==
X-ME-Sender: <xms:1DmEZdpvz8pLu10F3xL1Ta8BD2DIr8g7xf4N_pFZeAUMlV656a94hQ>
 <xme:1DmEZfqXvin6FR-QuviCB-y-8Acus729BX4e0o5Vq_lF5zu98X5KiMAW4nWzEZMRa
 rW3o--GJXITK_9Ozk4>
X-ME-Received: <xmr:1DmEZaOpieD_-li-87_Fa3EUyIsNdz_d8nNJwaDr3Xa7LIEjW1CZR-bkm48NaEkLAuW6Hw-cnVwHCwsgqEEaMRqHaFL_r-cIukE>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrvdduhedgvdegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepvfgrkhgr
 shhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhird
 hjpheqnecuggftrfgrthhtvghrnhephefhhfettefgkedvieeuffevveeufedtlefhjeei
 ieetvdelfedtgfefuedukeeunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpe
 hmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:1DmEZY4YLUqCsIJnDl9DfSRh_X6-_QAXZFiCP_plrzmSJ8XDJXmc2Q>
 <xmx:1DmEZc7MbhyWuszAWqeUsuUQszmz1w1qDEwCBjZe31iGsjMHPWqBrA>
 <xmx:1DmEZQjk_Jm0MpfKKa9JcsHsaPj_bB9PZ26zk-hxHsGz4iScwQBx1g>
 <xmx:1TmEZaRn7WscGuc4BkTr65rz6FUNBawEeIByAxm6on9B3AGVxAc9zQ>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 21 Dec 2023 08:12:51 -0500 (EST)
Date: Thu, 21 Dec 2023 22:12:48 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Adam Goldman <adamg@pobox.com>
Subject: Re: [PATCH 7/8] firewire: core: detect model name for legacy layout
 of configuration ROM
Message-ID: <20231221131248.GA603497@workstation.local>
Mail-Followup-To: Adam Goldman <adamg@pobox.com>,
 linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org
References: <20231220041806.39816-1-o-takashi@sakamocchi.jp>
 <20231220041806.39816-8-o-takashi@sakamocchi.jp>
 <ZYQ0gNwDsocA9QS7@iguana.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZYQ0gNwDsocA9QS7@iguana.lan>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Thu, Dec 21, 2023 at 04:50:08AM -0800, Adam Goldman
 wrote: > Hi, > > > - ret = fw_csr_string(dir, attr->key, buf, bufsize); >
 > + for (i = 0; i < ARRAY_SIZE(directories) && !!directories[i]; ++i) { [...]
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.26 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1rGIrK-0000eM-8m
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

On Thu, Dec 21, 2023 at 04:50:08AM -0800, Adam Goldman wrote:
> Hi,
> 
> > -	ret = fw_csr_string(dir, attr->key, buf, bufsize);
> > +	for (i = 0; i < ARRAY_SIZE(directories) && !!directories[i]; ++i) {
> > +		int result = fw_csr_string(directories[i], attr->key, buf, bufsize);
> > +		// Detected.
> > +		if (result >= 0)
> > +			ret = result;
> > +	}
> >  
> >  	if (ret >= 0) {
> 
> ret is an automatic variable with no initializer. Unless you initialize 
> it (to -ENOENT), this is UB.

Indeed. The uninitialized value is going to be evaluated. I'll send take
2 patchset later.


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
