Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B0D16970AC7
	for <lists+linux1394-devel@lfdr.de>; Mon,  9 Sep 2024 02:22:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1snSB3-0004z9-Du;
	Mon, 09 Sep 2024 00:22:45 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1snSB2-0004yz-8W
 for linux1394-devel@lists.sourceforge.net;
 Mon, 09 Sep 2024 00:22:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vfTPuiKjOfTpPO6Nz0ujZeNgem81DcoJwsV5O0J9rLw=; b=QNFjzkmt4lZWi6z7zR9HHPuf3k
 8gpbIApe4TF3cFvJ/mdiYHKgCV5zr4cG+JtTCqqdJztwnC/nI5Mz/MkpDBoBpvasIrXwgTI+5DwoY
 CPplCTyJyo2kuGodIp0VgYaB734olpUohBW3c6K3jmujS7fEd9YZn2Kl+zAHLU9gYINA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vfTPuiKjOfTpPO6Nz0ujZeNgem81DcoJwsV5O0J9rLw=; b=BOFYAlStX492sfk66MWRvjYHL1
 vL+Jle/ibOKeH6FNVUJ76OvGF+nLviCoJ1hcrsjE/8cwOCrLtNVwPKV3+ABaDmMfXF0rtbsR+kSnP
 vcq6LbZyPKXgBzjKcTMZMRCelwOjYE0s/5SJKqaDe3VbNU1Hl95/IDAwV0ybDTxd7QqA=;
Received: from fhigh3-smtp.messagingengine.com ([103.168.172.154])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1snSB1-0006Xa-B2 for linux1394-devel@lists.sourceforge.net;
 Mon, 09 Sep 2024 00:22:44 +0000
Received: from phl-compute-04.internal (phl-compute-04.phl.internal
 [10.202.2.44])
 by mailfhigh.phl.internal (Postfix) with ESMTP id A811211400C5;
 Sun,  8 Sep 2024 20:22:32 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-04.internal (MEProxy); Sun, 08 Sep 2024 20:22:32 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1725841352; x=
 1725927752; bh=vfTPuiKjOfTpPO6Nz0ujZeNgem81DcoJwsV5O0J9rLw=; b=P
 P6FcQoScZ5VhBFne3PUej83FgoaZR0SMsqtYV59ip4KTxNSqBmNpByfLw5dcBMuP
 xX1sILHV/o75bp0zvv1SF1UHPbpZM6IBa1FFWmbrwCh7GwtlK/Vs30ykk9D/2yMD
 2YbIMHy1S8vSLxk9KDX3X4o8vdpv3PxMHglruhhJYoWnue7pvpG7xGOGlWmKAk7A
 nyy29NC6p+ojBaAs5QY3M9R4OKV9OlnzDY86d4jYNGurDi7WaNdmpGSDaT1Vq5UU
 eagvsE5eQctKANPPNUMrnTBAtr3CD/yKq4fz6CFv82aKdpxlal+hj+PQhDbJi2rD
 L5zvDGR9mhnk8dgMNOGFw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; t=1725841352; x=1725927752; bh=vfTPuiKjOfTpPO6Nz0ujZeNgem81
 DcoJwsV5O0J9rLw=; b=BgwTWWH6iFcUMeUUMECSE8hCevKbPwS5YuxQRalSCJR8
 bYj6t9IsKRoKDmSSJchyflnpRolbl/ZFv0smIX/sabxQEDfMbbhQizoYip4ECaG/
 wlPV59Iu46uk0bYYnzUWpJ6xg6Fhu/h8tib53cdX1dSKgEB5REwe6WI/6VaXQBtJ
 /SQ4XWmYorMTtmM68aBXFHy+ZoqHkOxICjEfS0K98JEu29Hd+95HZBEGKpxIvHp0
 7MhShECDoJKhRcqwhNuZQXYm8AxQkd/2hc7HVqq+hcZkPZcDXuySQrKwR3zwod0f
 6f4yiVQeNcPEpO/IjVOEA4gI9u+cALeEHDBIW4TK5Q==
X-ME-Sender: <xms:yD_eZhxuUzZwFaqKtGziJNff42kADvI7mivhkwSzZHaXtkTCssqtnQ>
 <xme:yD_eZhQmOSg189DWBtSaNOnQGNYlXq8JX_xePY7Uid0b8QQoI_Z9Mhcn59-0LM0Vc
 EkIpyTZNfLs1NGaz20>
X-ME-Received: <xmr:yD_eZrWGW-K6Da1yGSGwo4BLPc0AtK2eajEr6t8AaAAdj8_cx_L_F7-LZbU7lG9zZNg6BEz1cD1HGb7jY70lCaf8LRmH1CG2s9EB>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudeiiedgfeehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvve
 fukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefvrghkrghshhhiucfurghkrghm
 ohhtohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrg
 htthgvrhhnpeehhffhteetgfekvdeiueffveevueeftdelhfejieeitedvleeftdfgfeeu
 udekueenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
 hoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopeef
 pdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvg
 hlsehlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhu
 gidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtoheplhhinh
 hugidqshhouhhnugesvhhgvghrrdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:yD_eZjhlvgUwXfdq05orgObrGa0IvD7wHEVmKNn15zqRyV2hgMD8dQ>
 <xmx:yD_eZjAt5ZxTPLt_sZess0EQIiGEXGx4mA47Ay7AdL7woQQHiB2neA>
 <xmx:yD_eZsL5U31TZzz-hpK8vXaB6eCwhpxvOW5TlyKC0jnt4lBysMmcUQ>
 <xmx:yD_eZiA1m7wQoT24jtSKtGWRoJeU0nubborhXoKAdcDKNJ5DbTWoIA>
 <xmx:yD_eZqMVpcyi4M2neNjYhIiGkuLxiJvnoTMb8sC0e9kO34SnF4Ag_6rk>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 8 Sep 2024 20:22:31 -0400 (EDT)
Date: Mon, 9 Sep 2024 09:22:29 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH 0/2] firewire: core: allow unit drivers to schedule work
 item to process isochronous context
Message-ID: <20240909002229.GA84487@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, linux-sound@vger.kernel.org
References: <20240908040549.75304-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240908040549.75304-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sun, Sep 08, 2024 at 01:05:47PM +0900, Takashi Sakamoto
 wrote: > Hi, > > ALSA firewire stack uses packet-per-buffer mode for both
 isochronous > receive (IR) and transmit (IT) contexts of 1394 OHCI. [...]
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.154 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1snSB1-0006Xa-B2
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
Cc: linux-kernel@vger.kernel.org, linux-sound@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On Sun, Sep 08, 2024 at 01:05:47PM +0900, Takashi Sakamoto wrote:
> Hi,
> 
> ALSA firewire stack uses packet-per-buffer mode for both isochronous
> receive (IR) and transmit (IT) contexts of 1394 OHCI. To process time
> stamp per packet (or per sample in some cases) steadily for media clock
> recovery against unexpected transmission skips in the IR context, it uses
> an IT context to operate all of isochronous contexts by calls of
> fw_iso_context_flush_completions() in the bottom-half of hardIRQ for the
> IT context.
> 
> Although it looks well to handle all of isochronous contexts in a single
> bottom-half context, it relatively takes longer time to finish. In the
> future code integration (not yet), it is possible to apply parallelism
> method to process these context. In the case, it is useful to allow unit
> drivers to schedule work items to process these isochronous contexts.
> 
> As a preparation, in this series of changes,
> fw_iso_context_schedule_flush_completions() is exposed as a kernel API
> available by unit drivers. It is a counter part of
> fw_iso_context_flush_completions(). This series of changes also includes
> documentation about these kernel APIs.
> 
> Takashi Sakamoto (2):
>   firewire: core: expose kernel API to schedule work item to process
>     isochronous context
>   firewire: core: fulfill documentation of
>     fw_iso_context_flush_completions()
> 
>  Documentation/driver-api/firewire.rst |  2 ++
>  drivers/firewire/core-iso.c           | 11 +++++++++++
>  drivers/firewire/core.h               |  5 -----
>  drivers/firewire/ohci.c               |  4 ++--
>  include/linux/firewire.h              | 17 +++++++++++++++++
>  5 files changed, 32 insertions(+), 7 deletions(-)

Applied to for-next branch.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
