Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CCEE53B1340
	for <lists+linux1394-devel@lfdr.de>; Wed, 23 Jun 2021 07:31:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1lvvU5-0000VZ-0P; Wed, 23 Jun 2021 05:31:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1lvvTu-0000VD-Mp
 for linux1394-devel@lists.sourceforge.net; Wed, 23 Jun 2021 05:31:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LEF1LNgst0bjgb4FOHFKgHZeYipfQQoqcBu139b0D8M=; b=BpbJ0Z34IMYRNkpzM5Tx0r0dCB
 U5PquHXpETtepb5udE98eMhy2femdSfdI5DQxQH0Ha2lQQXsszSZMTBh6EmnM62a5OcaO6NZULeJR
 XkHRFcxRaVa87AwWdO9b7TL2c9kYjblhqATAPq8RNbGN3DJpERSu7WJniJI1iJoxs8gs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LEF1LNgst0bjgb4FOHFKgHZeYipfQQoqcBu139b0D8M=; b=bR8DwM9TOqem1LgAiFTAId3KT6
 uwykOQLGZ+SLHSHTWYIpkcZnNBUJjrJ0NVdlYmoX14kuSYQ0yTzPQFxwQlnd1IHiojxYlubofw1Py
 7i3E6+SZzkxHqlQTwIFJe4644zuQPJ1E7oLcQUMiW3aLnM3fnEg4gHIo5Fe+NsGFLvI4=;
Received: from wout1-smtp.messagingengine.com ([64.147.123.24])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lvvTg-008Vr5-3W
 for linux1394-devel@lists.sourceforge.net; Wed, 23 Jun 2021 05:31:23 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id 0F141F55;
 Wed, 23 Jun 2021 01:14:36 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Wed, 23 Jun 2021 01:14:37 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=LEF1LNgst0bjgb4FOHFKgHZeYip
 fQQoqcBu139b0D8M=; b=wLEVbDZ6S+vaUMdpfMQOYaR1VVDz9QEBY2VZ7ep2qUP
 QH9O8x0YR9Ka5PzrdLxWT2PbTZ7b7wlXDxgyMZBA2LRkl9h/bZcPNRDBU56XojmN
 igtW1Nj6KtOwSG2ZDUCnFxVJEEGyhCZqV9bZqQqC1RyjJqECvK5ACj7ZJEjmEG95
 m5Ksf8UPMMiHe5VtnxLdnNiSJEz6QOSnCFvP++1VS6fMjVEWo0M9e9T2rLPSjGXc
 U47T+teBicGHrc/j7OcgM7mlHAYG6gOzDAZu0d66v/0F9S+LTkFx3Sro1k8JXuep
 t7eAL94l/1D5WCQvLTjfXsmI7aW3ascMQZY6o4oSIYA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=LEF1LN
 gst0bjgb4FOHFKgHZeYipfQQoqcBu139b0D8M=; b=D7MchOaxs8cE/LN2wMB3lf
 kKkYiDJrZsdXzGKHAdNdgFmL4r6Vl7zDK5aa4JScCtiYjdiiSHICJCdhNfDkbmJ8
 EFpvDmRBVErcSorMmBPPZ2pnJnBbekMaS/cyfszfJXLLYH+8YEs0yq/H17MG69b0
 JcINY2OzhR1zHXL5fQ94/6R6ynRfEiUA7Y2AwmzOHYNbgwVZr01dt/DPPUtHfIGY
 Z7Qg4BZWDq4kaH+symBTkDRvUuspSDBLrM044vAWWIN9AYjr0TGhUsQTKC/zQuAv
 EVwsPo2r6V6aEvgWNu7ozGmuOq653vVeK4Qe1K6FfBy+tbNYEiJ/5AYEJw+bHvng
 ==
X-ME-Sender: <xms:PMPSYC07lTCVW1qjTn9xTsY7mIr6zK3ucajns9T_w5ocbUwY-7EPfA>
 <xme:PMPSYFG8Jp5te5MTFD3aezOINNZQgrkh_SMx3bu3v3mvEQS7mnynP7Ls6d6fDkrcj
 6hd6aEG65L5dgIdl0s>
X-ME-Received: <xmr:PMPSYK5Mu_PAcCH76AiTM0qCdpJv_r7Uk_o1Yqnmr_vGJKgcXDPuqCI2LoJk2_oRQikzRaxkkgXGt8ODEBHqJXsuRUPcAxvc4g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrfeegvddgkeehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefvrghkrghs
 hhhiucfurghkrghmohhtohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjh
 hpqeenucggtffrrghtthgvrhhnpeefueevjedvtdevtedtvdetfeeftdelheffgfeglefh
 geetleekffduueeuteejjeenucffohhmrghinhepphgrshhtvggsihhnrdgtohhmpdhgih
 hthhhusgdrtghomhenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:PMPSYD1m7-ZO9Iy6eV0-blK2AmCSHHKpF8txE2n33HxwiFhsgU8vTA>
 <xmx:PMPSYFEaScwKqoPBAOhR6i_zMoB5bfbZgKYFkESr9-be5g0Gf_RNcg>
 <xmx:PMPSYM-WV6qT7LlQtcCVU-YUHuIXAZ8kUudLWu-NHXJPry3c3b0ONQ>
 <xmx:PMPSYIMROA-Rpum_aAYJwgiafBAY8e_ecO9wQUxaR39izS3fqUk4KQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 23 Jun 2021 01:14:35 -0400 (EDT)
Date: Wed, 23 Jun 2021 14:14:32 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: "Yoder, Lukas P" <lukas.yoder@gatech.edu>
Subject: Re: FireWire OHCI Driver Issue
Message-ID: <YNLDOP/yW9uDG1VF@workstation>
Mail-Followup-To: "Yoder, Lukas P" <lukas.yoder@gatech.edu>,
 "linux1394-devel@lists.sourceforge.net"
 <linux1394-devel@lists.sourceforge.net>
References: <MN2PR07MB724736CDFE0D13C83CFEC7A797099@MN2PR07MB7247.namprd07.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <MN2PR07MB724736CDFE0D13C83CFEC7A797099@MN2PR07MB7247.namprd07.prod.outlook.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: pastebin.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lvvTg-008Vr5-3W
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
Cc: "linux1394-devel@lists.sourceforge.net"
 <linux1394-devel@lists.sourceforge.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

On Wed, Jun 23, 2021 at 12:14:00AM +0000, Yoder, Lukas P wrote:
>    Hello,
> 
>    I'm using the vanilla Linux kernel version 5.10.27, and I'm
>    encountering an issue with the firewire-ohci driver when interfacing
>    with my OHCI-compliant Texas Instruments TSB12LV26 IEEE-1394 Controller
>    (over PCI).
> 
>    Devices show up under "/dev/fw0" and "/dev/fw1". In the kernel's sysfs
>    under "/sys/bus/firewire/devices/", I see "fw0", "fw1", and "fw1.0".
> 
>    If I build the OHCI driver into my kernel, I get nonsensical values in
>    "/sys/bus/firewire/devices/fw0/config_rom". If I instead build it as a
>    module and manually run "modprobe firewire-ohci" after boot, when I
>    read "/sys/bus/firewire/devices/fw0/config_rom", I get the name of the
>    Juju stack spelled backwards alongside garbled text:
>    [1]https://pastebin.com/hm7Y6SBr
> 
>    Regardless of whether I build the OHCI driver into my kernel or as a
>    module, if I try to get information about the "fw1" device at
>    "/sys/bus/firewire/devices/fw1/config_rom", I get the device name
>    spelled strangely as well: [2]https://pastebin.com/raw/dsHuWrzM
> 
>    I believe fw1's "config_rom" should read "QImaging Retiga Digital
>    Camera (v100)".
> 
>    This does not appear to be a problem with my card because it doesn't
>    know anything about the Linux "Juju" stack.

Against your expectation for string literal, the content of 'config_rom'
node is binary data, including structured metadata.

We can see the format of content in ISO/IEC 13213 (formerly IEEE 1212). The
'crpp' (Python script) in linux-firewire-utils is available to parse it:

 * https://github.com/cladisch/linux-firewire-utils

I note that the content of 'config_rom' node is aligned to host endiannes.

>    Here is my kernel config: [3]https://pastebin.com/raw/dw9w3KtN
> 
>    Here is the relevant portion of my `lspci` output:
>    [4]https://pastebin.com/raw/9QFugen9
> 
>    Here is output of `tree /sys/bus/firewire/devices/`:
>    [5]https://pastebin.com/raw/TMaW1S0T
> 
>    Here is output of `grep -R . *` in "/sys/bus/firewire/devices/":
>    [6]https://pastebin.com/raw/6ZGW7fD1
> 
>    It's very strange that the strings in the config_rom's are backwards
>    and out of order. Could this be an issue of endianness?

As a side note, the camera does not have IIDC-compliant content of
configuration ROM:

> fw1/fw1.0/specifier_id:0x0006e3
> ...
> fw1/fw1.0/version:0x000100
> fw1/fw1.0/modalias:ieee1394:ven000006E3mo00000000sp000006E3ver00000100
> ...
> fw1/vendor:0x0006e3

If it were compliant, the value of specifier_id should be 0x00a02d
(=OUI of 1394TA). I'm not good at IIDC specification and implementations,
but I think device enumeration by libdc1394 might fail.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
