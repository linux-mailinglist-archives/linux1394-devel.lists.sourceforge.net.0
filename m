Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ADC03B20A42
	for <lists+linux1394-devel@lfdr.de>; Mon, 11 Aug 2025 15:33:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=n9ZWORMVlP16GWFg97fKIOkbnpJSGqaTWrm0a870MbE=; b=WOclmIqWoDXr5/P4pcHkkJWigm
	7JEcdK1lA5KY96iierCye8mU9CpvRu2bo+MTh/YS5CRl/ivlQBBwfrBqpucKS0d735NITpas1iwBx
	QmXhIbwzZ3/8BQJ5utX2h5qYtF2S/PrTimGnDV/7Bk22Ea2dK7rnVQVLKXUQrabeXrPA=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1ulSeN-0000Wx-BY;
	Mon, 11 Aug 2025 13:33:19 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1ulSeK-0000Wn-FO
 for linux1394-devel@lists.sourceforge.net;
 Mon, 11 Aug 2025 13:33:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gctimxa54HqQNQrX29F+qPQpcXdjoL5nPuvFUUnFTC4=; b=jsUA2J7sY0md2gCLRm31Eec9qj
 ZK7HKkSQ5LKtTAQf0w4svi4r+sReZh/q+Dim7N/E1Zh3FfOA2t1Qri1+bj1AHSEdVA5OO9HqkszQ+
 V7UsABAWrNMcg6Ua1dl/AYCOZB0tzw5SHL4BeoIz0cPZsSNEGsUnq3sAwKDFCx7IqEJQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gctimxa54HqQNQrX29F+qPQpcXdjoL5nPuvFUUnFTC4=; b=Sa3Pww7p34sa5lgN5bfpUTe7y9
 AuI713jCYYo69K9/YKEdwzckGjuDuu9SLamWc37Tpt7fxOY2Hi7GNHcK2rDZ1VcqMud4FXm95YAiP
 qlD0N3CBRGh06so/c+2KrP4GljUcLgvopQ7r5LFMfWLDToTIduQFcwB+rJU6vPeN2HiI=;
Received: from fout-a4-smtp.messagingengine.com ([103.168.172.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ulSeJ-0004Db-UI for linux1394-devel@lists.sourceforge.net;
 Mon, 11 Aug 2025 13:33:16 +0000
Received: from phl-compute-04.internal (phl-compute-04.internal [10.202.2.44])
 by mailfout.phl.internal (Postfix) with ESMTP id 60613EC0013;
 Mon, 11 Aug 2025 09:33:05 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-04.internal (MEProxy); Mon, 11 Aug 2025 09:33:05 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1754919185; x=
 1755005585; bh=gctimxa54HqQNQrX29F+qPQpcXdjoL5nPuvFUUnFTC4=; b=D
 aoG2BtZ/ICU0i4bY2O7xY+utMpleQ6+0Ne1EpD04p7ARiqnTIxTIpLUUuNEMYL4E
 7SqERMY4L7zepf3ktv3w8AaE3IJocxlpGBhvI0auV4lnm7ikj/hiae7cqaf+GcK6
 5JnR/8RHWEplr1fZCr460gsS9Ohb1dAJ1LwkSArY7wOVe3xWq+d4SvRk7SKxr5w2
 G5gH49fnd5lxucgEym4sLsw6srClhp7pvNjnynuVTzeIemDjjSiq7knzwSqH/rg/
 tkrwRmW8MXGl7+hwmoTVqpsWu9HIHzPtrj2HghQEO0tKr5cZrCK8wmXnG9JPI43o
 o5MLfEhWh6BUQ5wagr+aQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
 1754919185; x=1755005585; bh=gctimxa54HqQNQrX29F+qPQpcXdjoL5nPuv
 FUUnFTC4=; b=l5kV/e4x5bY/nQoZ+5xj8bmP4ioXgMsr0Det//KAAz2bVNpuodj
 GMsK2a2lp+9JUJPAFQg7kB3icwq/Y8moEfZLDuoSk7/LW7zYp1KsT8/76EGbkGOf
 5HNfxzjeyyeFGdh0mlIYZ4wGByARxNwQLkYTLpRrZQ3O3O2iHGqs6ARLH0Tev/Ii
 QMLaCeAnUvNRj9EE7wlnLhDDbaCxBPcg6xoFWehuuX7q77RRXrVrd8z4wZ+lFXSJ
 AXMvQObRcJvtYxeCWE0wTy05yXorntefgVFaLQvI/yilHF6+pJe1T17eMHI+2wY1
 +Le+o4HS4CfYQvRt8pdhIBECzMKTc3n1KgQ==
X-ME-Sender: <xms:EfGZaDrY4q21TojA8ECLFgZKaNPXWKXyrOwMWN5OnpUnsTE3Agjt3Q>
 <xme:EfGZaEios-NQx1YSMmjX7UZfslqjhxcM3VTFTikFEcUkEcEQOJ1sye1wq-krgCmvA
 pvo5p-MfnFjoRavDW0>
X-ME-Received: <xmr:EfGZaNLXoPlb8lD7HZagK7e9vKSFEfDxnbRSiBi-XwoKEG5mMtkdh1XHCTdvJLCm7Is8pD7rLicHKIVFGd1nLjnHCN9dxVyVRaI>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdefgddufedvheekucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucenucfjughrpeffhffvvefukfhfgggtuggjsehttdertd
 dttddvnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeevieelhfduke
 ffheekffduudevvdefudelleefgeeileejheejuedvgefhteevvdenucffohhmrghinhep
 khgvrhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrg
 hilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjphdpnhgspghr
 tghpthhtohepfedpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepvggumhhunhgurd
 hrrghilhgvsehprhhothhonhdrmhgvpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghl
 sehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtoheplhhinhhugidufeelgedqug
 gvvhgvlheslhhishhtshdrshhouhhrtggvfhhorhhgvgdrnhgvth
X-ME-Proxy: <xmx:EfGZaECazUry70UhWLDFtdCDjfo-hnJpXz4jvDZbo2gpq0Am0DcU8A>
 <xmx:EfGZaNjtTqgtFTWngQU0EFIs1TQulQHVCMdHKTHpqupiUY6ySiHSFg>
 <xmx:EfGZaMliVZTV31-wnr4ppumS_VWOENL7EthTntR3YX4uQIvLEvwQWg>
 <xmx:EfGZaJqzhxdZeYHjMLfvBZJKyDwuFFbr93k7_g5iJZAgKC3j2WtvPw>
 <xmx:EfGZaK8W80BE9KCTxAFWrOmbwLttLVarzCiPK9nOZUZnn4cJK1o1nJXd>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 11 Aug 2025 09:33:03 -0400 (EDT)
Date: Mon, 11 Aug 2025 22:33:02 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: "edmund.raile" <edmund.raile@proton.me>
Subject: Re: [GIT PULL] firewire updates for v6.17 kernel
Message-ID: <20250811133302.GB267817@workstation.local>
Mail-Followup-To: "edmund.raile" <edmund.raile@proton.me>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux1394-devel@lists.sourceforge.net"
 <linux1394-devel@lists.sourceforge.net>
References: <20250802054917.GA127374@workstation.local>
 <pTURxXSK4yF5-FlMBbpWLMW5JUC2s1BvSYdYGKBAgEOpI9z4RhnQsLrrRj7E2Iu02sOznG5ysKRVpXR4ZWFp-CSeSebIP1YGQl7gbFLGeEo=@proton.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <pTURxXSK4yF5-FlMBbpWLMW5JUC2s1BvSYdYGKBAgEOpI9z4RhnQsLrrRj7E2Iu02sOznG5ysKRVpXR4ZWFp-CSeSebIP1YGQl7gbFLGeEo=@proton.me>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Edmund, On Fri, Aug 08, 2025 at 01:50:44PM +0000,
 edmund.raile
 wrote: > Dear Mr. Sakamoto, > thank you for including me in the pull request, 
 I am honored! > > I tested the combination of this pull request and [...]
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1ulSeJ-0004Db-UI
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
 <linux1394-devel@lists.sourceforge.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi Edmund,

On Fri, Aug 08, 2025 at 01:50:44PM +0000, edmund.raile wrote:
> Dear Mr. Sakamoto,
> thank you for including me in the pull request, I am honored!
> 
> I tested the combination of this pull request and your fix patches [1]
> on arch 6.16.0-1-mainline (based on "Linux 6.16" 038d61fd6422)
> with TI XIO2213B and RME FireFace 800.
> 
> [1] https://lore.kernel.org/lkml/20250728015125.17825-1-o-takashi@sakamocchi.jp/
> 
> So far audio playback seems perfectly stable:
> days with varying CPU load, compiles, even mprime.
> Suspend also seems fine, even without first powering down / disconnecting
> the FireFace.
> Direct ALSA streaming or pipewire, no issues so far.
> 
> Tested-by: Edmund Raile (edmund.raile@proton.me)
> 
> Thank you for keeping FireWire alive and even developing it!

Thanks for your test, however it is my previous proposal. The latest one
is "[PATCH v2 0/4] firewire: core: call address handlers outside RCU
read-side critical section"[1]. The difference between two proposals is
just to use kalloc helpers instead of XArray for FCP handlers allocation,
thus not effects to your device.

Anyway, thanks.

[1] https://lore.kernel.org/lkml/20250803122015.236493-1-o-takashi@sakamocchi.jp/


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
