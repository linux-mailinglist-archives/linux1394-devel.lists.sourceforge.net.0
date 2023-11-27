Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BB047F9DF9
	for <lists+linux1394-devel@lfdr.de>; Mon, 27 Nov 2023 11:56:15 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1r7ZHW-0006le-2l;
	Mon, 27 Nov 2023 10:56:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1r7ZHU-0006lC-52
 for linux1394-devel@lists.sourceforge.net;
 Mon, 27 Nov 2023 10:56:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UtM9RKlxkzj6qhzzXasHkB0xkiIOXGDNMekXiOgvdlw=; b=htsnsLbW67wFTNR0UlCEbMdPQv
 BMgLLLczTPjwtX5AkjxtSKWV6rsg9lmqenMGDAN9ghLbylW4Df7S3pLv7S2ppIwlhcq2arH2sWyjU
 sMlluBzWUnCc1FgvQ/uXdy/6VQYXESgSXAqOVIK86EgZmkGtVRfhbymxviwt9NiiJ9ak=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UtM9RKlxkzj6qhzzXasHkB0xkiIOXGDNMekXiOgvdlw=; b=XO4B14hhoU70NSIE1oA/G5ptQ0
 vipwUMOH/qlcIEwEf3S28RhI6mFUSrVy9Y/UW6EbY0WzgKG0PEVcAWe7so99rBP3wGzWWa/SyZzDu
 dCv9WHK88vgwPr4adx+AUmNmjhIUJFJ3BxQTDsxC6v5IXSpT20duzj/F60hnjmTieMmo=;
Received: from wout1-smtp.messagingengine.com ([64.147.123.24])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1r7ZHN-0006AL-8F for linux1394-devel@lists.sourceforge.net;
 Mon, 27 Nov 2023 10:56:00 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
 by mailout.west.internal (Postfix) with ESMTP id 97F8D3200AD8;
 Mon, 27 Nov 2023 05:40:08 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute6.internal (MEProxy); Mon, 27 Nov 2023 05:40:08 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm1; t=1701081608; x=
 1701168008; bh=UtM9RKlxkzj6qhzzXasHkB0xkiIOXGDNMekXiOgvdlw=; b=g
 hXzIn/piRS2tcNKotgn5TG6+V/DpfV+Hi55yRyqIPovlppN6cyv9am7H4a2Kw9k6
 VbraotzRM4v6u4nE0MhM4fSFV6WDMQw5XdjtvwQ2WlLn4NMCOekzpuktA+1D+Ajs
 pjx8q/nSlFZq5b0JIa2VZhKq/fgBbCiZahndmQM062G0mFvEofPhF/Kuqkb+IO6i
 r7O5LQ+T6bWn7drgPVt4/wpV7dfMWyQ1pfCqkP4Jen9ApZw0wyt2uTpNuldR9LwR
 S42t4yALNeya5039fAYQqz+PQOzoZ4wuZiuSBqk7B1vA33eNAouygHjM3WwEDg9H
 M5cy5oYpbUEkXqaHPbSkw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm1; t=1701081608; x=1701168008; bh=UtM9RKlxkzj6q
 hzzXasHkB0xkiIOXGDNMekXiOgvdlw=; b=Oo+vjh239k+1+pn+0WwIy/yZKRkZd
 Kqo0PW0/qPUed9+PpO0OfSS6hQ026lRZiqAJKSZPko0pVg0/E9Adq8gyWsDNEULH
 AK0bCJC2ITLRIGpCFfWTqGhKdqrm73tS4F/WnyNpsS8ZjPnaPAtHNxO6HO4YpjIE
 QxSJNc6c1b6od6yI5cAy56zzmZOa28a4aZeVB/DeZd9YU0NZ59lM8j+jQUq9V9us
 WzKu5jWZeLhEsQgMrHySQSGF7TduRnkzbYwf5CtHU69HUOOtFNjxxW6G/xEjpCZe
 f/7jWNNv7h30uarqmH3IOS3tAGb8Zkv8SF0euVEPg/ni64sZhlfmYVe6g==
X-ME-Sender: <xms:B3JkZRJKAa6NmEm7_Cupqk-w6wqzy1oIRsNgtENARe2RN2Q7P6LyZA>
 <xme:B3JkZdLRpmuk5vJFpr9NwdScE1KfkPfQ5K_zCwJ6DxOzMaeQoaNOClqjcW8bd-i6n
 WK-jLG22UvjOiRLSn8>
X-ME-Received: <xmr:B3JkZZtagjc8jTzpN2ULO7LmFE-vuRxQTPDhpZkJR5Z-9hVlfIvRJQS5P_8nkpzF2VYfPNbJSBV1ccD3WKBM0VmSVPH6UJj9XA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudeiuddgudekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepvfgrkhgr
 shhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhird
 hjpheqnecuggftrfgrthhtvghrnheptdeuueehjeffudevgfetgeeugeejuddvuedtueel
 gfeftdehleffieetueeiuddunecuffhomhgrihhnpehkvghrnhgvlhdrohhrghdpghhith
 hhuhgsrdgtohhmpdgtrhgvrghtihhvvggtohhmmhhonhhsrdhorhhgnecuvehluhhsthgv
 rhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihessh
 grkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:B3JkZSZCr_VDI3GOGL-ufFY972Ybv6yPQqvzz3FPEzaYymmV7_BGZQ>
 <xmx:B3JkZYYSWTyuDf2XVeLVnpSo4fdrc_XwhSdSdC7-VMLPRqbJJinegA>
 <xmx:B3JkZWDj_4BbFedTzhaOOECa5N3Hf4aAPdEboGSVDCgEYEgdWOKA6A>
 <xmx:CHJkZRAQyKO-xLBnTz2PfR8jVi39ci6XnKiUX_Xe9XY5tL_90xD6DA>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 27 Nov 2023 05:40:06 -0500 (EST)
Date: Mon, 27 Nov 2023 19:40:03 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Adam Goldman <adamg@pobox.com>
Subject: Re: [PATCH] Fix missing sysfs vendor/model entries for some devices
Message-ID: <20231127104003.GA5447@workstation.local>
Mail-Followup-To: Adam Goldman <adamg@pobox.com>,
 linux1394-devel@lists.sourceforge.net
References: <ZWMgBK3vnYjy63AD@iguana.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZWMgBK3vnYjy63AD@iguana.lan>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sun, Nov 26, 2023 at 02:37:56AM -0800, Adam Goldman wrote:
 > Hi, > > When the Sony DVMC-DA1 is connected, /sys/bus/firewire/devices/fw1/
 has > a vendor entry, but is missing vendor_name, model, and [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [64.147.123.24 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.24 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1r7ZHN-0006AL-8F
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
Cc: linux1394-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On Sun, Nov 26, 2023 at 02:37:56AM -0800, Adam Goldman wrote:
> Hi,
> 
> When the Sony DVMC-DA1 is connected, /sys/bus/firewire/devices/fw1/ has 
> a vendor entry, but is missing vendor_name, model, and model_name.
> 
> This is the DVMC-DA1's config ROM:
> 
> 00000000: fbe7 1e04 3439 3331 0040 64e0 0346 0008  ....4931.@d..F..
> 00000010: 3c19 1400 81b6 0600 4600 0803 c083 000c  <.......F.......
> 00000020: 0a00 008d 0300 00d1 0500 00c3 0a00 0081  ................
> 00000030: bfcd 0200 2da0 0012 0000 0113 fe0c 0200  ....-...........
> 00000040: 0000 fa17 0800 0081 6ec6 0200 0346 0008  ........n....F..
> 00000050: 3c19 1400 269e 0300 0000 0000 0000 0000  <...&...........
> 00000060: 796e 6f53 1d00 0500 0000 0000 0000 0000  ynoS............
> 00000070: 434d 5644 3141 442d 0000 0000            CMVD1AD-....
> 
> Note that the root directory contains two entries for vendor. The first 
> is a Vendor_ID immediate value, and the second is a Vendor_Info 
> directory. The descriptor for vendor_name is after the Vendor_Info 
> entry. However, search_leaf compares the directory entry high byte 
> against the desired key_id without masking off the type bits, so it 
> doesn't recognize the Vendor_Info entry.
> 
> Also, the model and model_name are not in the root directory, but 
> instead are in the vendor directory. search_leaf and show_immediate 
> don't see these, because they only search the root directory.
> 
> The following patch fixes the above problems.
> 
> The new behavior is conformant with Annex A of 1394TA Document 1999027, 
> Configuration ROM for AV/C Devices 1.0: "Some legacy devices may have 
> their Model_IDs and textual descriptors in minimal ASCII subset in their 
> vendor directories. It is recommended for a controller to read the 
> Model_ID and its descriptor in the vendor directory of a target only if 
> the Model_ID and its descriptor are not present in the root directory of 
> the target."
> 
> In addition to the DVMC-DA1, other devices are also affected. This patch 
> also fixes the missing sysfs entries for the Sony DCR-TRV120 and 
> Panasonic AG-DV1DC. The Sony DCR-TRV310 has been reported to have the 
> same problem and should be fixed by the patch, but I don't have one for 
> testing.

Thanks for the patch. Indeed, for the legacy layout of Configuration ROM,
current implementation of core functionality does not pick up enough
information from the vendor directory. I think you already know the similar
case in the issue filed in systemd project[1].

The patch format is not compliant to Linux kernel development, while I
would evaluate it. However, I need more actual examples. Would I ask you
to provide images of Configuration ROM retrieved by your test devices?
I think you own Sony DCR-TRV120 and Panasonic AG-DV1DC. I maintain
collections of Configuration ROM[2] and it is preferable to receive merge
request in github.com service. Of cource, you can send them directly to
me, instead. I have a plan to move the collection to git.kernel.org, thus
we take enough care of image license. I think it better to use CC0[3].

Well, I note that you can decode the content of Configuration ROM by
'config-rom-pretty-printer' in linux-firewire-utils. The tool is written by
C language and can be build in your system, I believe:
https://git.kernel.org/pub/scm/utils/ieee1394/linux-firewire-utils.git/

For example:

```
$ cat rom.img  | config-rom-pretty-printer
               ROM header and bus information block
               -----------------------------------------------------------------
1024  041ee7fb  bus_info_length 4, crc_length 30, crc 59387
1028  31333934  bus_name "1394"
1032  e0644000  irmc 1, cmc 1, isc 1, bmc 0, cyc_clk_acc 100, max_rec 4 (32)
1036  08004603  company_id 080046     | 
1040  0014193c  device_id 12886219068  | EUI-64 576537731003586876

               root directory
               -----------------------------------------------------------------
1044  0006b681  directory_length 6, crc 46721
1048  03080046  vendor
1052  0c0083c0  node capabilities: per IEEE 1394
1056  8d00000a  --> eui-64 leaf at 1096
1060  d1000003  --> unit directory at 1072
1064  c3000005  --> vendor directory at 1084
1068  8100000a  --> descriptor leaf at 1108

               unit directory at 1072
               -----------------------------------------------------------------
1072  0002cdbf  directory_length 2, crc 52671
1076  1200a02d  specifier id
1080  13010000  version

               vendor directory at 1084
               -----------------------------------------------------------------
1084  00020cfe  directory_length 2, crc 3326
1088  17fa0000  model
1092  81000008  --> descriptor leaf at 1124

               eui-64 leaf at 1096
               -----------------------------------------------------------------
1096  0002c66e  leaf_length 2, crc 50798
1100  08004603  company_id 080046     | 
1104  0014193c  device_id 12886219068  | EUI-64 576537731003586876

               descriptor leaf at 1108
               -----------------------------------------------------------------
1108  00039e26  leaf_length 3, crc 40486
1112  00000000  textual descriptor
1116  00000000  minimal ASCII
1120  536f6e79  "Sony"

               descriptor leaf at 1124
               -----------------------------------------------------------------
1124  0005001d  leaf_length 5, crc 29
1128  00000000  textual descriptor
1132  00000000  minimal ASCII
1136  44564d43  "DVMC"
1140  2d444131  "-DA1"
1144  00000000  
```

Finally, I apologize in advance that my patch review would be delayed
since I'm involved to critical kernel regression in the combination of
AMD Ryzen machine and a kind of 1394 OHCI cards[4]. It takes more days
to review your patch, sorry.


[1] IEEE1394_UNIT_FUNCTION_VIDEO not set on camcorder (because it does not
have ATTR{model}?)
https://github.com/systemd/systemd/issues/25029
[2] https://github.com/takaswie/am-config-roms/
[3] https://creativecommons.org/publicdomain/zero/1.0/
[4] https://lore.kernel.org/lkml/20231105144852.GA165906@workstation.local/

Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
