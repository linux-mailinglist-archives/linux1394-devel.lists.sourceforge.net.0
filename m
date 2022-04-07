Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 489474F6EF6
	for <lists+linux1394-devel@lfdr.de>; Thu,  7 Apr 2022 02:10:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1ncFjS-0001cL-Ca; Thu, 07 Apr 2022 00:10:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1ncFjQ-0001cD-QC
 for linux1394-devel@lists.sourceforge.net; Thu, 07 Apr 2022 00:10:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=U5WfQ+6qT79WcWmJEsxQhXGAhm+D0KJQuIx4kwqDUAQ=; b=S9Bzr+ce9iPPyJ0Gf/27xgo6z9
 C3cHhvUDMeU41BeUXDD7pERtj+6TrkOgkjESa/Qoi4eirNessGVAnCZWoDhJ7E5uKMXTLdP4jL1KW
 sUtkbFMyzheLT2zKkbov+vBvSOyUNYDaL8j/7aM0JTsyHAGNG2rTzRO0dGw7aMm9ab1g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=U5WfQ+6qT79WcWmJEsxQhXGAhm+D0KJQuIx4kwqDUAQ=; b=cMxKhPFnJJ1wBMHDrs2yL1qeE2
 hsukQ0u4yXeIF8Ff0fAipPXjpZji6+lJidKsuv6EbwIpoBpVWqJvaZDVNGklhQ6KXMR9XeDGMuMNJ
 k/VWz5Vh+rybfmbgvuQ4EIkKyomAs14RG1kAXg4X0W+OazFqukzVp1AsNHIIaYd32q34=;
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1ncFjO-0086VD-71
 for linux1394-devel@lists.sourceforge.net; Thu, 07 Apr 2022 00:10:35 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id 3327E3201F24;
 Wed,  6 Apr 2022 20:10:26 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 06 Apr 2022 20:10:26 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:sender
 :subject:subject:to:to; s=fm1; bh=U5WfQ+6qT79WcWmJEsxQhXGAhm+D0K
 JQuIx4kwqDUAQ=; b=LE60T11Y8eIKEJmIQYQFBkJvNvz59moAx/a92uEz1+hHAs
 khGz9FO1XCAihio4ldWIJSpcsceeIPmXqDOSEVvrl8ifUR0fiv5kt35F+AgcP/5c
 /+BfAwf7v+bNVcUDx6W1IIn6QgOYVljg+vHXgImH1lZ4BusBmZtlO8x58iTmD2D5
 6WeRT6omRRrd3dWz+9Nhu6IWmD0zbdx0esh9rmM6Vb6etG8S3uReSIG1m5KqeQyM
 CRmpY3BWAVwQCiPcSYlaM62+zlIwI9CWx1kdr9c3wSMKA5pMEX1J5cN6KD4dDBIN
 bSQVgogoFV947+w68ff3GsMfCBs5lGQaR3HXnLow==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=U5WfQ+6qT79WcWmJE
 sxQhXGAhm+D0KJQuIx4kwqDUAQ=; b=ZPUFTidVN0jHZmK6d28u/Krm5zmOb8ki1
 H6mv6PdCeQKa8C+GMMkc1NFB3QgkrMjW4iMl9I18o3XSEmnM2456ZxEEkjbYFh9+
 XMMe4u/RZSfbbDF++qWqNSA87QQ0AKq7n/VM/gZnTmuc0yDHir9MllbPS0TM+TO+
 V/u1hlVg2c8VUHDpTu+Q+XDLH4i4e8v2gVZTHsyWdfJZYJAoxQppbWBESTjLgmCD
 jIIsPrO0eHCfpldzkv+u0yKk1DR8Ac+39+/JvlkYK4XVv7P0HFchpL4nXg/nxcqb
 Z76gUERoWGzzxM2CHD1GE53a8AKgpee/D752wAc/w+YDsWsb1LfAQ==
X-ME-Sender: <xms:8StOYsdKY2-rGhqPaPqAzIhgsDZalAvfYbCeU40kMWXV9iEkcetlDA>
 <xme:8StOYuO832uNnAcdB6HKg5uDkGGhTZTDfzEO0AgkujrAUWND8EasmhWW3IpQdWLDy
 vfeOcRao1njYzs-E7k>
X-ME-Received: <xmr:8StOYti2m-SAL5aNoygZSxXGPYt_1lgRNIJugDAONBmg0Z4XemFwcnHe2QM8FO3vjPwMxDMyUQYvRg-CSSv3Xs1RnVz24wdi>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrudejjedgfeduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefvrghkrghs
 hhhiucfurghkrghmohhtohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjh
 hpqeenucggtffrrghtthgvrhhnpeejgeeifeeuveeufeeigeegjeelvdfgjeegffejgfdv
 keelhefgtdefteejleekjeenucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecuvehluh
 hsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhh
 ihesshgrkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:8StOYh9WlmD0GsoROWT8eztL7NWnFdPxFl-KuXZUbvLlsL9o8Nl_Fw>
 <xmx:8StOYotJOrS3n4tqFBh0xc_ZN4x-kjzX5azYMzUktI1AVfn-HVMOog>
 <xmx:8StOYoHO7vEtlUHYktVyDepWftci7FD1uf_m2BI0YellxKPYTLm7pg>
 <xmx:8StOYkIjWF-XyFlh7VYxEhlk9h68Kg2iSxizFliMFD1An1R5oCErog>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 6 Apr 2022 20:10:23 -0400 (EDT)
Date: Thu, 7 Apr 2022 09:10:21 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Takashi Iwai <tiwai@suse.de>
Subject: Re: [PATCH v3 0/3] firewire: assist unit driver to compute packet
 time stamp
Message-ID: <Yk4r7VcotHz0iMOU@workstation>
Mail-Followup-To: Takashi Iwai <tiwai@suse.de>, clemens@ladisch.de,
 alsa-devel@alsa-project.org, linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <20220405072221.226217-1-o-takashi@sakamocchi.jp>
 <s5hczhv5wjc.wl-tiwai@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <s5hczhv5wjc.wl-tiwai@suse.de>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Apr 05, 2022 at 06:23:35PM +0200, Takashi Iwai wrote:
 > On Tue, 05 Apr 2022 09:22:18 +0200, > Takashi Sakamoto wrote: > > > > Hi,
 > > > > Current implementation of Linux FireWire subsystem doe [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [64.147.123.21 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.21 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1ncFjO-0086VD-71
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
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On Tue, Apr 05, 2022 at 06:23:35PM +0200, Takashi Iwai wrote:
> On Tue, 05 Apr 2022 09:22:18 +0200,
> Takashi Sakamoto wrote:
> > 
> > Hi,
> > 
> > Current implementation of Linux FireWire subsystem doesn't allow unit
> > driver to operate content of packet in IR context according to
> > time stamp. Additionally it doesn't allow unit driver to read current value
> > of CYCLE_TIME register in OHCI 1394 controller. It brings disadvantages to
> > drivers in Linux sound subsystem in regards of handling time for sampled
> > data such as PCM frames and MIDI messages.
> > 
> > This rerolled patchset is first step to improve the situation.
> > 
> > Changes in v3:
> >  * Rebase v2 patchset to v5.18-rc1
> > Changes in v2:
> >  * Rebase v1 patchset to v5.16 release
> >  * https://lore.kernel.org/lkml/20220212022131.199855-1-o-takashi@sakamocchi.jp/
> > V1:
> >  * https://lore.kernel.org/lkml/20211202113457.24011-1-o-takashi@sakamocchi.jp/
> > 
> > Hector Martin (1):
> >   firewire: Add dummy read_csr/write_csr functions
> > 
> > Takashi Sakamoto (2):
> >   firewire: add kernel API to access CYCLE_TIME register
> >   firewire: add kernel API to access packet structure in request
> >     structure for AR context
> 
> Thanks, applied all three patches now to for-next branch.

Although thanks for your applying them into your tree, I apologize to
trouble you if you overlook that the included changes is just for Linux
FireWire subsystem. It's my fault to send them only to Linux sound
subsystem, but the changes are required to my work in sound drivers... 

If you are willing to include patches to Linux FireWire subsystem for
your pull-request to Linus, I can prepare respined patches for it since
I have the list of patches posted to LKML as bug fixes for Linux FireWire
subsystem.

I need any help to solve current situation of Linux FireWire subsystem
that bug fixes and new changes are hardly merged. Of course, IEEE 1394 bus
is already outdated and legacy, but I know that some users still work
with it. If your path is available for it, it's the easiest and the most
convenient way for upstreaming, I think.


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
