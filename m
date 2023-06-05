Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 23392723368
	for <lists+linux1394-devel@lfdr.de>; Tue,  6 Jun 2023 00:56:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1q6J7z-0007gc-Tb;
	Mon, 05 Jun 2023 22:56:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1q6J7y-0007gO-J5
 for linux1394-devel@lists.sourceforge.net;
 Mon, 05 Jun 2023 22:56:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=a7KMYicZEUIE6uw7owk+wAQbBZMSOwnOCGbW7LMEHdQ=; b=gifkoW+8t3vixhvyXmj0cAlHNY
 S93m7V5JYNoOyvMqnV92kenOAtG5aYyjXfH9xtCQpTK0yZmleLZyANZlHDmjIv1zOpImD/BpMIidi
 tWf+3KhvqfCt2avnRukT05Ofv5GE+SqVYYQnVQvjT+LwgCgBzteU7lmVnoPfRZsah+08=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=a7KMYicZEUIE6uw7owk+wAQbBZMSOwnOCGbW7LMEHdQ=; b=GhpdNFDas4LY2bA2eShBsv+KZi
 PTm3v9ejUbXnWenQ9JSYs0lUs0ktI672eijPIwNY/5oP4Mwvj8IXX0TemxGDziLeyBIRc4xPEFuWw
 p1l/BZeR64Tp3ug/S51WYCaGf/eE3dr9nFZqZdMZ/A5wZ+58PozveQTG8W5Wo0F5zKOw=;
Received: from out1-smtp.messagingengine.com ([66.111.4.25])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q6J7w-0007uG-Cc for linux1394-devel@lists.sourceforge.net;
 Mon, 05 Jun 2023 22:56:42 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id CEC9D5C06DD;
 Mon,  5 Jun 2023 18:56:34 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Mon, 05 Jun 2023 18:56:34 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:content-type:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:sender
 :subject:subject:to:to; s=fm1; t=1686005794; x=1686092194; bh=a7
 KMYicZEUIE6uw7owk+wAQbBZMSOwnOCGbW7LMEHdQ=; b=ZRckXazygVE2iBj1KT
 C43WeNABbbX96WzodVN7/uF2MN9F+dl7AUHe52F5I2Z6wcxZhfGtenmkJdsGzmRs
 gUfs4cDXQhxljZUnS57fg6KvxKCRKrwiC2+MJdgC1bhXaVlbZfr+aCBGIex4mDnN
 g35pvDoN+LQcwNaGpdUv0agon1xNpExoah1SQSwxyviuaGyXY00vFKPitR6kWDaV
 gPT9IXpeJDDgp7HTefb3Q85U0gRYCIjqFy+k8df44zcS3efmMxEieNTuBE3niawi
 r0t+lbjQf39EzRb71ak+hrIp+7ETQ64pSYSLIzlG/gWJLL9AenugiPDBNn/RTIL8
 w4Ew==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm1; t=1686005794; x=1686092194; bh=a7KMYicZEUIE6
 uw7owk+wAQbBZMSOwnOCGbW7LMEHdQ=; b=QFIi8G/idAhkoxhnvL5yqUFlhtIe3
 y/LzMNRdN2nvMlVTYBbTW1SsSRmVP84klSrYVzXEIOoOvSWYF2zCQlsts6HTpLhK
 77nLsHBuAi0SNJsq0fcYnHKFlY08oAmQCq79L55tgYerA/NvGcM3QTOm4ZSe5Kjf
 L7RGtv49HNH3bda3aYipQVuvFiBk6miK4iz4KkgHkh30V1MgFHTpCoHkIDRaujLu
 VfiR6Bqw2Y6kyrsnRvMy8JrzW/AZq/oGYr+zHY+jM059PpEqnbcfmtgn6Ds+e9ZT
 vCQHW7f+0MerTCBlib1iQgP/7Tz15wXt7jTEBfiFdT5ccEkQR/3QTsquA==
X-ME-Sender: <xms:Imh-ZM8k44EA8AL2ltq2KV76wMIkO3Ug1CdB3kgmPIBkgdDJP5NhUg>
 <xme:Imh-ZEvCkhk6lxc2s2JaB0BZzTA4hnRuyijui0k4w-WWxA-ADbtqeOIdYb_NYTRwp
 F2dnDEjnz00QBKIQcI>
X-ME-Received: <xmr:Imh-ZCB0kNyYXzl958VMp2bxVi0hl2IFAErYR_WRyKN1AZRqF-bi8fGKyml_zGT6e1LdUZhjx3jhBMssztzmlYU_WmzPBfbh>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrgedttddgudehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesthdtre
 dttddtvdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnheplefhueegvd
 ejgfejgfdukeefudetvddtuddtueeivedttdegteejkedvfeegfefhnecuvehluhhsthgv
 rhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihessh
 grkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:Imh-ZMedOcTYIjjW2IKL19v1hyc5rlJSkcgDNJEHDYK6Yh38MYoZJQ>
 <xmx:Imh-ZBO8AJIszCjvq1idlBuMSyBtn_DX1ixK9UTQddZt8NyO8_lVwg>
 <xmx:Imh-ZGnCsy_Cep0rsUs29hAj2BGJXprxfFdFbfk0gOXkRDC0tudxZQ>
 <xmx:Imh-ZDX1q_eh9HGx7eYL5Mi_CI65jEE45cclaa1JJU09QWf__-P-Bw>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 5 Jun 2023 18:56:33 -0400 (EDT)
Date: Tue, 6 Jun 2023 07:56:31 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/9] firewire: ohci: adoption of device managed resource
Message-ID: <20230605225631.GB178739@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <20230604054451.161076-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230604054451.161076-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sun, Jun 04, 2023 at 02:44:42PM +0900, Takashi Sakamoto
 wrote: > Hi, > > Linux FireWire subsystem includes a driver (firewire-ohci)
 for 1394 OHCI > controller. The code of driver is mostly written [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.25 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.25 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1q6J7w-0007uG-Cc
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On Sun, Jun 04, 2023 at 02:44:42PM +0900, Takashi Sakamoto wrote:
> Hi,
> 
> Linux FireWire subsystem includes a driver (firewire-ohci) for 1394 OHCI
> controller. The code of driver is mostly written at the time when device
> managed resource (devres) was not widely used. Nowadays the usage of
> devres is standard when writing drivers. The series is an adoption of
> devres for firewire-ohci.
> 
> I note that MSI-related operation is left as is. The hardware vendors
> forms their products of extension card with 1394 OHCI controller
> connected to PCIe bus by several ways. If chip of 1394 OHCI controller has
> PCIe interface (e.g. VIA VT6315, LSI FW643), it is just connected to PCIe
> bus. If the chip has PCI interface only, it is connected to PCIe bus via
> PCI/PCIe bridge chip (e.g. VIA VT6307 + asmedia ASM1083). There is some
> chip of 1394 OHCI controller integrated with the bus bridge (e.g. TI
> XIO2213, XIO2221). The MSI-related operation should cover the above
> forms as well as module option, while it is still unclear that the
> operation from pci device driver to the bus bridge.
> 
> Takashi Sakamoto (9):
>   firewire: ohci: use devres for memory object of ohci structure
>   firewire: ohci: use devres for PCI-related resources
>   firewire: ohci: use devres for MMIO region mapping
>   firewire: ohci: use devres for misc DMA buffer
>   firewire: ohci: use devres for requested IRQ
>   firewire: ohci: use devres for list of isochronous contexts
>   firewire: ohci: use devres for IT, IR, AT/receive, and AT/request
>     contexts
>   firewire: ohci: use devres for content of configuration ROM
>   firewire: ohci: release buffer for AR req/resp contexts when managed
>     resource is released
> 
>  drivers/firewire/ohci.c | 174 +++++++++++++++-------------------------
>  1 file changed, 63 insertions(+), 111 deletions(-)

Applied to for-next branch.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
