Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1755A89480E
	for <lists+linux1394-devel@lfdr.de>; Tue,  2 Apr 2024 01:55:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rrRUy-0006lt-H4;
	Mon, 01 Apr 2024 23:55:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rrRUx-0006ll-5r
 for linux1394-devel@lists.sourceforge.net;
 Mon, 01 Apr 2024 23:55:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zPMXLNT+Y0CToVj0ettUX2YI972veEPf5jnDTl4OFu8=; b=Mb7lOxRUE1ESOzk3M0wj4XTQWA
 wPnw8BYy2qP/RPcuRV1v9frh3ntOggx4AKGA2kRePfStK+eV7Jua6/2m6kvshSN3UXsNDousGREjl
 oIiZwjplgyGBzNQHczgSSpY1Tioo5dCJ09BrI9amoFLLBDZbbISuKAh1mmFU6/6WOUS4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zPMXLNT+Y0CToVj0ettUX2YI972veEPf5jnDTl4OFu8=; b=KQwS/qFPGvN+Ffj7uqdv91jmJc
 O4SY5ui1nnacZQ7f6SqQrTS+fRSQphoX/XkZ/PTHqM7vq6jSAF2eqxAeQChOOlgTy8h/IlPQRqETs
 cJYUtWIX91Yfxr7/m41tUzsPqffPwr+5hePr1VzFa4g3WTKu1+mpS/B80r2lHhY2fhKw=;
Received: from wfout2-smtp.messagingengine.com ([64.147.123.145])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rrRUw-00027u-0u for linux1394-devel@lists.sourceforge.net;
 Mon, 01 Apr 2024 23:55:31 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailfout.west.internal (Postfix) with ESMTP id 765F21C0008B;
 Mon,  1 Apr 2024 19:55:19 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute2.internal (MEProxy); Mon, 01 Apr 2024 19:55:19 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1712015718; x=
 1712102118; bh=zPMXLNT+Y0CToVj0ettUX2YI972veEPf5jnDTl4OFu8=; b=C
 C9x9WuWJ6IL5z0AU74H2T9/bwu2P6F3a1sRu0Fg4G2BE1b8C632+CZ7LwG9BfG5Z
 0DWXwKrEjAOKVgmfASD3CARGDvlxJcxUtd9NOPYilWwDOmNO2nnxzhaypo/fUCHO
 5Eu6YRorpUHlvaJsMw6cUxft0HNOoC9mGSRmMWq6TQTGXJ9iua8iecf2jr5meW/7
 xezlsaSnHBBYEB97xlyjFpRuDdaO/uB/iX5a5umRUJ75AAb7Atc7XEztTRiA67fS
 Y7Rjkx2clpfuPOJh4y6PisxZ6wWdnIE8l8DJi2tDomIJ0s6qq5KXtkq91PGwAgvr
 g2c0wU27cXkTKBiKhM38w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; t=1712015718; x=1712102118; bh=zPMXLNT+Y0CToVj0ettUX2YI972v
 eEPf5jnDTl4OFu8=; b=EY7SLQ/UoGWL/ITpBoUYrP62IiKGYMkYK92a+rYJS1yG
 LUgaFIloqoH+TpA6zG4Xll6yvsKzs7pxO3NsTUkHxcbWebr9k3nX2Wtaqy2il35q
 wsrMWdpQbTs4i356SwMteOQik1TxvwD+aLxx3iCCxxYoX8WNcnfSE0RirLugATjl
 u+ChbQLkgbN9VbVuPMze1uLlv6h4Fjv3P6L4uiROCiUMRj4WfEOjp6kPCs1G276T
 jJVIXap647Kmd5/T8kMMnsh8JcRI4mcWw9t+Gq8lcpCFRMufN1rNAgT9tLl8XWPQ
 I/dIFVPtxtf/x65jNeET3NiZlxaQ895Xeqtk5HO1FA==
X-ME-Sender: <xms:ZkkLZvEXFC5OBa9ypXtlY2lmOgl0J4__j-ch_sRWkKlRoFV3d4XkHA>
 <xme:ZkkLZsXTMgREAKkB4eTug_MvVPm9_DPZNwZQAnsKu_ovDKw2rlryj-PnqZfI7Mu_R
 pNKrzC4VhZNdLhmlTs>
X-ME-Received: <xmr:ZkkLZhKB43qFOJv41MtXapiZ5yQa1CEEfSvm41FL75nYOej4OkhQibspo2UxNqesme9CNDuOfqG8mbiohb_tUDo-4Y0sCQo9iA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudefuddgvdejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvvefukfhfgggtuggjsehttd
 ertddttddvnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeehhffhte
 etgfekvdeiueffveevueeftdelhfejieeitedvleeftdfgfeeuudekueenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:ZkkLZtGMT5bvWEjZ4cogtPi_2IFBkvAV2i8lEHsk_2ZMIvEDnEuUJg>
 <xmx:ZkkLZlV_UsOtuXIKBKC7YqEOlsBwEav3_yO68wKY2oFZgjs4hB3IRA>
 <xmx:ZkkLZoMxyeFhOcdORkUbhZNc-9hoct4k--66l0eNNK1MeZvvR_66ow>
 <xmx:ZkkLZk1Yh5Yzqt-pghNwSTek13OfUFLKb6nPrDM12hNk5rnG685fvQ>
 <xmx:ZkkLZoQkR3ufAhamDV4Z9wyw3NA6u-cU9FCBt3xmnF3BaTlnfI9U0DLNaRo>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 1 Apr 2024 19:55:17 -0400 (EDT)
Date: Tue, 2 Apr 2024 08:55:14 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH 0/4] firewire: ohci: obsolete usage of legacy API for IRQ
 request and MSI
Message-ID: <20240401235514.GA231753@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <20240331135037.191479-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240331135037.191479-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sun, Mar 31, 2024 at 10:50:33PM +0900, Takashi Sakamoto
 wrote: > Hi,
 > > The pair of pci_enable_msi() and pci_disable_msi() is deprecated
 > nowadays, while it is still used in 1394 OHCI driver in F [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.145 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1rrRUw-00027u-0u
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
Cc: linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On Sun, Mar 31, 2024 at 10:50:33PM +0900, Takashi Sakamoto wrote:
> Hi,
> 
> The pair of pci_enable_msi() and pci_disable_msi() is deprecated
> nowadays, while it is still used in 1394 OHCI driver in FireWire
> subsystem. This series of changes is to use modern API sets for the
> driver.
> 
> 
> Takashi Sakamoto (4):
>   Revert "firewire: ohci: use devres for requested IRQ"
>   firewire: ohci: replace request_irq() with request_threaded_irq()
>   firewire: ohci: obsolete usage of deprecated API for MSI
>   firewire: ohci: use pci_irq_vector() to retrieve allocated interrupt
>     line
> 
>  drivers/firewire/ohci.c | 35 +++++++++++++++++++++++++----------
>  1 file changed, 25 insertions(+), 10 deletions(-)

Applied to for-next branch for v6.10.


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
