Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 637FE9E7DA9
	for <lists+linux1394-devel@lfdr.de>; Sat,  7 Dec 2024 02:13:49 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1tJjO4-0002HI-6O;
	Sat, 07 Dec 2024 01:13:36 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1tJjO1-0002H8-Kz
 for linux1394-devel@lists.sourceforge.net;
 Sat, 07 Dec 2024 01:13:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=g7z1jVtmM7j1+OaUW/MUyU9UTEWnAzeQ4ULDFVf3T88=; b=YSWoTlzX7GrUrfN1nwCik17Lfd
 WkhYA7aPFjd9TJuKZYFT1b+f6nVQEeiCctDJtKZfD331XtBY4aXq/LhSCs4yRBY6HetcyrmxL5vjG
 2Jxx1bNJ4iZzsXwG6ZCCMXG+UTO6UwgaUpUMPHwh+UbJieRH6cfvJgp9sKU1hJTTJemg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=g7z1jVtmM7j1+OaUW/MUyU9UTEWnAzeQ4ULDFVf3T88=; b=URDhsWdfj9Nf+oCKNONpIlsyac
 LYBBalLlv2HOJqLbieYnPBcRvywC41Ut5taCE0olG7BzEEDZfERnRUAS3mR9wCrBo/H8vJEWGl1Td
 TBoepkrXAe0v0fMDD5YXb3HfxpwAq9c4rJhAFHImhwhFnFUs5mHmxFhtvkrYdLwAdMHE=;
Received: from fhigh-a6-smtp.messagingengine.com ([103.168.172.157])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tJjO0-0007Ph-JB for linux1394-devel@lists.sourceforge.net;
 Sat, 07 Dec 2024 01:13:33 +0000
Received: from phl-compute-07.internal (phl-compute-07.phl.internal
 [10.202.2.47])
 by mailfhigh.phl.internal (Postfix) with ESMTP id E610E11401BF;
 Fri,  6 Dec 2024 20:13:21 -0500 (EST)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-07.internal (MEProxy); Fri, 06 Dec 2024 20:13:21 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1733534001; x=
 1733620401; bh=g7z1jVtmM7j1+OaUW/MUyU9UTEWnAzeQ4ULDFVf3T88=; b=f
 gjYJARgaAAUx45IrJLKp3Pajs8OlZ49IYPytf6I2u/EPzkwG0m2Wktp6zQi3Z03T
 7XDtVRbd/kINubttopLzejkTXYdGNnUxkayHLq94+qN51iOr5uvbIralyb7Butxx
 4S2ZSXOKc0tPsRnuOWiLgm4KmMr5co1zSIPcwu682dz0OMbNv6iTfwZjBDJPRyM+
 sfv1seReAGpb8UsTw412L97lnplrEuKHH3q9Sn/DcAWVBc0RvrkUA1wleGsjleNt
 O6nqbZp4cl53HnqdXefe85/2ZP9FCFNfBY1b7tarXUHiGJjxok4Rp22QEATA6YFj
 HyAACcZCUc9p61AOaPR6A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
 1733534001; x=1733620401; bh=g7z1jVtmM7j1+OaUW/MUyU9UTEWnAzeQ4UL
 DFVf3T88=; b=lKAhxmXN9IqjDz02bvfwla2x4yr7r+CAOJde6np4NhaoshsEgDc
 yYqCTst63+bi33GT/B+hSbR1eM/CDRXQiOXN9WOE0ITs6AfMJueFzKhin4qiciWd
 s0MUsy9qakgi33ucpFDG1Sqkp2u2bdYmnzWgd01utwP1TYswpxhe92GApA5e1Vft
 TLrWx5tgwWfRNR7W/eVPYjtS5t9i6wlpZqQhYlbtIVrYG78YWc48gP3bKDG0ztDW
 KP/kHzMZlKE64YYr2fmyZWDbTXuPLZ7BAYNq2abPfscuqUVDz6pPhLbABXEOH73G
 PVd5h54zHkFfmanSvIR4D3290Z4QdwYWmdg==
X-ME-Sender: <xms:MaFTZ9A_glOoSnrux4PTfH2hO0yRAdOONQV1mCHIHzKFss4mrj9ylQ>
 <xme:MaFTZ7gngA9QjeVB7xJwP_35K6CFUp_scQ2ACgmKapVapz02uzGDKYxwbygMxQtE0
 Gy5rNonZyKh35SEyTA>
X-ME-Received: <xmr:MaFTZ4mRQOKqZZG6POTkdLS8LUGpqsSHntwIy0O1ZzhcZj0q4acTesC3LR7jt8V1fCXjCHO4WLfbAWWvY0Mo48odPfD4-SkYN0M>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefuddrjedtgddvjecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdpuffr
 tefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnth
 hsucdlqddutddtmdenucfjughrpeffhffvvefukfhfgggtuggjsehttdertddttddvnecu
 hfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghshhhisehsrg
 hkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeehhffhteetgfekvdeiueff
 veevueeftdelhfejieeitedvleeftdfgfeeuudekueenucevlhhushhtvghrufhiiigvpe
 dtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrghkrghmohgt
 tghhihdrjhhppdhnsggprhgtphhtthhopeegpdhmohguvgepshhmthhpohhuthdprhgtph
 htthhopehvrghisghhrghvghhuphhtrgegtdesghhmrghilhdrtghomhdprhgtphhtthho
 pehhvghlghgrrghssehkvghrnhgvlhdrohhrghdprhgtphhtthhopehlihhnuhigudefle
 egqdguvghvvghlsehlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvghtpdhrtghpthht
 oheplhhinhhugidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:MaFTZ3x5bpVxUY06GYMmyjwTlauOCN33DSY-dIchJg5LcaBEEqTNuw>
 <xmx:MaFTZyTmwqNXsU6xRgc2vyurX8NCJgBC79zhMa0L_3SN6lj0pV1Yag>
 <xmx:MaFTZ6bx1rY-w1D8AqbfPNG3w7VgmuwaEQteQGCjtzzkX7Is_9DTcQ>
 <xmx:MaFTZzSZRSIXmRfFh_8ia2QwUt8wcJs3jHg47EOAKDfldD9i6DejIw>
 <xmx:MaFTZ4OalWqTpUzHhOKT8ZDsoeG70GHqYL6A-spJufsxevF4Gq3-Vc6d>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 6 Dec 2024 20:13:20 -0500 (EST)
Date: Sat, 7 Dec 2024 10:13:16 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Vaibhav Gupta <vaibhavgupta40@gmail.com>
Subject: Re: [PATCH v1] firewire: ohci: use generic power management
Message-ID: <20241207011316.GA148867@workstation.local>
Mail-Followup-To: Vaibhav Gupta <vaibhavgupta40@gmail.com>,
 Bjorn Helgaas <helgaas@kernel.org>,
 linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org
References: <20200720150715.624520-1-vaibhavgupta40@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200720150715.624520-1-vaibhavgupta40@gmail.com>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Mon, Jul 20, 2020 at 08:37:16PM +0530, Vaibhav Gupta
 wrote: > Drivers using legacy PM have to manage PCI states and device's PM
 states > themselves. They also need to take care of configuration reg [...]
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.157 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.157 listed in sa-accredit.habeas.com]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.157 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1tJjO0-0007Ph-JB
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
Cc: linux1394-devel@lists.sourceforge.net, Bjorn Helgaas <helgaas@kernel.org>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

On Mon, Jul 20, 2020 at 08:37:16PM +0530, Vaibhav Gupta wrote:
> Drivers using legacy PM have to manage PCI states and device's PM states
> themselves. They also need to take care of configuration registers.
> 
> With improved and powerful support of generic PM, PCI Core takes care of
> above mentioned, device-independent, jobs.
> 
> This driver makes use of PCI helper functions like
> pci_save/restore_state(), pci_disable_device() and pci_set_power_state() to
> do required operations. In generic mode, they are no longer needed.
> 
> Change function parameter in both .suspend() and .resume() to
> "struct device*" type. Use to_pci_dev() to get "struct pci_dev*" variable.
> 
> Compile-tested only.
> 
> Signed-off-by: Vaibhav Gupta <vaibhavgupta40@gmail.com>
> ---
>  drivers/firewire/ohci.c | 43 ++++++++++++-----------------------------
>  1 file changed, 12 insertions(+), 31 deletions(-)

Although it takes a long time since the patch was posted, I applied it
now to for-next branch with my handy changes to optimize to v6.13-rc1. 

I still have a slight concern about the operation specific to powermac
platforms, however let us fix when receiving any reports from the users.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
