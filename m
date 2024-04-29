Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BB73F8B4F19
	for <lists+linux1394-devel@lfdr.de>; Mon, 29 Apr 2024 03:06:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1s1FTG-00053s-60;
	Mon, 29 Apr 2024 01:06:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1s1FTE-00053d-BC;
 Mon, 29 Apr 2024 01:06:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FhcQY7qFiRqb4dF/YjvGxcTGAblrGiXgMIjOp0wqQm8=; b=baoziaf9EZYM1gnghBV3oSxuCa
 hzfui1oGv8TkmHUJpBFCYXpBiJ6FIJd3PeUMesHaFajYfYKhf8minxhC/67z1KkbFtT4cGs38aztX
 L7lG3sacLeQxOq25PpnjYmZ1HAh+GnyjTba+KrTj8eY6jMLXAzxymdxMeLBIbceMRXRE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FhcQY7qFiRqb4dF/YjvGxcTGAblrGiXgMIjOp0wqQm8=; b=N0hbWQhuK5PXDv6yREWOjQmbpv
 12DIGh10wJJp0ake8Rf22jstSSMZNaRYK6Y2SwU35LYZFwv6EQ+v6sDAhQ5wQj+fU8bxer1ghfd22
 7typlDFzeRxKlVu1OzSWFTTsXIP1k1xcYGwPyCqLsa7wB6rdn7pLqtlOqGLSqOfpW1nU=;
Received: from fout4-smtp.messagingengine.com ([103.168.172.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1s1FTD-0007tL-24; Mon, 29 Apr 2024 01:06:16 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
 by mailfout.nyi.internal (Postfix) with ESMTP id 92DDA138015C;
 Sun, 28 Apr 2024 21:06:04 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Sun, 28 Apr 2024 21:06:04 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1714352764; x=
 1714439164; bh=FhcQY7qFiRqb4dF/YjvGxcTGAblrGiXgMIjOp0wqQm8=; b=N
 bVxJTOFLeaGxwn6L3vouRfSCGdehUpmhmt4JDSMH4/B37PYjSVO52OCiQx8MPQZM
 Sj03JqC6UcdsLYchB1B1UoGqQrRR1ttmvvGuGNOt7xpYq/OaRR0gqtAnxasd/Az3
 FPoVG/dGQcOyTDQNZ3lA+0R+j4Kq0IxzFrityUc5ezo4bemgwKBUE123fVw+cGOO
 oWR7vcqlcrM9oCgtmpptJeixjqIuca8FGABE7S/AsnzPnyirahPZI1mS9IxodsrA
 MI+UZk1nBRVP6AfGkpsSSK/uKTvqJZLajq1L/AN4FhIka86eK+bg/WlJLMfZXyNm
 DDUH1iYbX6Cs5HY3sU4JA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1714352764; x=1714439164; bh=FhcQY7qFiRqb4dF/YjvGxcTGAblr
 GiXgMIjOp0wqQm8=; b=KJ1DNC07c8RMboS0IUozoNHXnmWzbk/ur/W6yXGiA/eS
 JkyJd4qxJxs+SLu1FBmlDJ1/RvMAEq8CMPBLBoHWZ8qAOgV6plQYdksVWi4kDzrg
 MCu1K98o+9vu9OFi94Bn7p+SXexbxJE/MmgdICILxabWoAvXqtR7hjyeKpz8aZUe
 k11jfGi0AHKinpwGJuLiTsyEPsPaFqvKzxHrLIb6oQF5ZraqIB17riyOLEI5pFUv
 5j1+OCtzZJntHkvIlOfyFbLeYhi/HgWR0rJs3HD3DP0UbaJJnpZqiPu+XmlLGgIW
 +wAogphOscJciseXniFKL4xj7ii/OFJv0z+VHfenlg==
X-ME-Sender: <xms:fPIuZoroRkG9r-T57W9GB-OnQ_BPr3nodyHWNaCM4CnxaTBLcIImdA>
 <xme:fPIuZuoaS9OSS3D2YWAasjGh1lM3oYTh_vjpIVVt-m_zB-Fq7gQonRhFyv9C1JpOZ
 Vd6uGQBlUvknDFt5Xc>
X-ME-Received: <xmr:fPIuZtMJQSQGR6uzc4P4RgqSgVD5PuL8MiE2nt34kyp-bVJicFW0lPIFPg_FLUc5QAycDwa0DHUHCfzw3RCqpwSpPsOMtjFz3GA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvddtjedgtdelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepvfgrkhgr
 shhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhird
 hjpheqnecuggftrfgrthhtvghrnhepudehgeeuveetuedvkeekvdfgffelieeivdelhfet
 tedtveettefgffegjeefleeknecuffhomhgrihhnpehgihhthhhusgdrtghomhenucevlh
 hushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:fPIuZv4s7Cu6C7M5lgAIismk-Mv_x19C6htfTJcACJJN_ls92Al2rw>
 <xmx:fPIuZn4gZ96zncGzFnRWNzsNZBeteK1m__PboMqXcYKYsJX2L2rZmQ>
 <xmx:fPIuZvilKBJXY-J1lXhG7uK4VTfmj2GwZN7tHJoPKZldl-CTf-IrpQ>
 <xmx:fPIuZh4MqcPqNtLFEwnEP4j9MreUCVMX73m743P6Uw_29JxVWq9zhw>
 <xmx:fPIuZpnS0oCpq12mNWTGoeWlXfMO9eWITgfMTJcwTSPquAiRorEkPO_v>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 28 Apr 2024 21:06:02 -0400 (EDT)
Date: Mon, 29 Apr 2024 10:05:58 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: "Joerg M. Sigle" <joerg.sigle@jsigle.com>
Subject: Re: Fwd: Requested configuration data - Re: Is there support for the
 Tascam DM-4800 / IF-FW DM Version 2 or could you guide me to try
 making it?
Message-ID: <20240429010558.GA494058@workstation.local>
Mail-Followup-To: "Joerg M. Sigle" <joerg.sigle@jsigle.com>,
 linux1394-devel@lists.sourceforge.net,
 ffado-devel@lists.sourceforge.net
References: <206e7a47-ba27-a2b4-3611-2d548dff5995@jsigle.com>
 <5d60e9a5-b594-5edd-19c2-e38ea210eeaa@jsigle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5d60e9a5-b594-5edd-19c2-e38ea210eeaa@jsigle.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Sun, Apr 28, 2024 at 05:22:29PM +0200, Joerg M. Sigle
 wrote: > > 1. The image of configuration ROM > > ... > Please see the
 attachment.
 Okay. I made a PR to systemd project according to the content of image. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1s1FTD-0007tL-24
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
Cc: linux1394-devel@lists.sourceforge.net, ffado-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

On Sun, Apr 28, 2024 at 05:22:29PM +0200, Joerg M. Sigle wrote:
> > 1. The image of configuration ROM
> > ... 
> Please see the attachment.
 
Okay. I made a PR to systemd project according to the content of image.

https://github.com/systemd/systemd/pull/32542

When you put the entry in your system following to 'man hwdb' (e.g. under
/etc directory), restart udev daemon, and logout/login, the access
permission to '/dev/fw1' is configured to what we expect automatically,
independent of the installation of libffado2 rule. (requiring systemd v249
or later).

If you agree with CC0 for the copyright of image, I would like to push
it to my collection, Just for safe, Do you mind it?

https://github.com/takaswie/am-config-roms/

> > 2. General section information in Wavefront DiceII ASIC
> > ...
> > $ firewire-request /dev/fw1 read 0xffffe0000000 0x28
> 
> root@think3  So Apr 28  14:56:23  /usr/src/ffado/linux-firewire-utils-0.5.1
> # firewire-request /dev/fw1 read 0xffffe0000000 0x28
> result: 000: 00 00 00 0a 00 00 00 82 00 00 00 8c 00 00 00 8e ................
> result: 010: 00 00 01 1a 00 00 01 1a 00 00 00 00 00 00 00 00 ................
> result: 020: 00 00 00 00 00 00 00 00                         ........
 
Good. The general section consists of the following information:

000: 00 00 00 0a 00 00 00 82: global section    offset 0x28,  size 0x208
008: 00 00 00 8c 00 00 00 8e: tx stream section offset 0x230, size 0x238
010: 00 00 01 1a 00 00 01 1a: rx stream section offset 0x468, size 0x468
018: 00 00 00 00 00 00 00 00: extended status of sync is not supported.
020: 00 00 00 00 00 00 00 00: reserved fields.

You can retrieve the content of each section by read access to the
offset plus 0xffffe0000000 and the size. For example of tx stream
section:

$ firewire-request /dev/fw1 read 0xffffe0000230 0x238

The tx/rx sections tell software about the stream formats and
configurations.

Well, my concern is the spontaneous change of these two sections by
mixer settings of tx/rx channels. As I mentioned, your device has
two modes (16 channels and 32 channels) per each, at least according to
the manual. The description in the manual reminds me that these two
sections have a quirk which I do not expect for Dice devices.


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
