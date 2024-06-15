Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 426EA90963A
	for <lists+linux1394-devel@lfdr.de>; Sat, 15 Jun 2024 08:01:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sIMTh-0004qA-AT;
	Sat, 15 Jun 2024 06:01:30 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sIMTe-0004q0-QH
 for linux1394-devel@lists.sourceforge.net;
 Sat, 15 Jun 2024 06:01:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pVkvcR5Mh/CuKy7u+0e9iN5sR7E/3l6Wx4z3fQhdZjU=; b=hJRDsk5Ge/k9Y37l0kN5epDlHl
 q6Ausn+/bCy3JjTeMl+K1hCFagsk1QFSOqPHeL4ZeQD5PlvRB2qvGDowvsTrH4MPrJhzH0TYxAMVf
 VsRC4z0Ve3v7hL49VDbsvcmejxyLbh02wZZdNSwrFfwJe1gWOwfCSF7pNBza0lnkDWBs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pVkvcR5Mh/CuKy7u+0e9iN5sR7E/3l6Wx4z3fQhdZjU=; b=UJAajQkPoYkQYKyDiVWfWxXkf6
 MHKpDA2A2DswNSimBBJXL0TA8vxBMWnacHSJyNnpKW1sFAcCR2MfbqeK5R5HDNA7y86sufGajUnMD
 U7Mj8jj6yx1x9vTty9E4EzWiZoBjOgdViBNonDK16OxUHAyuaQqWIKW4FglfzyKKg3wE=;
Received: from fout8-smtp.messagingengine.com ([103.168.172.151])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sIMTe-00028w-69 for linux1394-devel@lists.sourceforge.net;
 Sat, 15 Jun 2024 06:01:27 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailfout.nyi.internal (Postfix) with ESMTP id B7B69138030D;
 Sat, 15 Jun 2024 02:01:19 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Sat, 15 Jun 2024 02:01:19 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1718431279; x=
 1718517679; bh=pVkvcR5Mh/CuKy7u+0e9iN5sR7E/3l6Wx4z3fQhdZjU=; b=a
 5lOoSE+miL9JdhfK+Du4a+OVtOLtDCHCUIPDY5YQEK5nO+eI3uyHjDBSh3rGDKH2
 OH5xVRbmmg9EJQiEIkywKbdSUK6wtSeN0C0G3K0hbvCgyfUL2uBnc5vpykRaThON
 9j7el1bnQSsl2UWr2Tlfg47a/8Lo2UYJQqBZYJoNt46sU3HYEmsRPQjAtzL4aICe
 eusrKbrhLi9qNCE4Vjt1GfBc2WxJ9YMYy3TO47aFXsQQbS01RyrbpgGbeBJhRC0f
 dDSNJGsaxPDjb6dmwBz1uG1hrOhmo7gbQJetb4Dq9/diVFMZR0HOOaeFOagRGsa7
 eS63wSOzGSW2dk7DC7Jng==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; t=1718431279; x=1718517679; bh=pVkvcR5Mh/CuKy7u+0e9iN5sR7E/
 3l6Wx4z3fQhdZjU=; b=mZ5dDT5pTJ191Zcgo763UUeyxtCHRc1CRLu78QDyAwRS
 /uQ80UgeAZNO7bX6S6kmdOcWHyrjTdQK3aZKgr5fqJ0TreR4zGwNIWHKVV95bvl1
 vB8Hwbot1VBcusMJt1ITAt0qinEOr8QNTdn88OBcMVpkVjfXu/r+CagXFNK0AEyI
 yb9aEN3cFOLPWsoq4GWpFVkSYvbcU5Vn05Czz1fz4JI0HoG3WLO4s2NnlkTnkw/P
 BFHualGOsxCgOmh/WKPWvCIzjd4/HwQIX52NU+M+uMF+0c3moHv8vrVVIFipPMBp
 q5DNPB1VY9WsK5JxPmnX402biPSrgxPAgJHgv81P8A==
X-ME-Sender: <xms:Ly5tZgI2qR4RiBk4zQI3rNVe7pd6o8_aMiIhtnXbChFwrrAvFRz4vw>
 <xme:Ly5tZgLnX-JozYQPiuYp-IqraX77lYub3-rr2GZBqKT99GfORIojHmA98pHC6yIGL
 AtunFOa4O7tX9CXIaU>
X-ME-Received: <xmr:Ly5tZguAmTUA_HFCrixg67nxflqsPSOI0QJJw594FPL1XZ_TpmXN5uiV5BFYFgZraNRnZ25vjPEGG3PcdwOBmbGbISR8VMBnNyiH>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrfedvtddgleelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvvefukfhfgggtuggjsehttd
 ertddttddvnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeehhffhte
 etgfekvdeiueffveevueeftdelhfejieeitedvleeftdfgfeeuudekueenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:Ly5tZtbSbJThrsagKvWGfZGsO9lZZH5Y4FH1kopGyyonKOLBmF8x9A>
 <xmx:Ly5tZnbNTSW5iMqcgyT2T3pZ0ZrHFaHRj9BBm0_46rSJUtR1j5JLAA>
 <xmx:Ly5tZpAbZwa0NUHdCdGJ3oNub4-AqJtxb6XUu16kWfXJYXZ927_GMw>
 <xmx:Ly5tZtatBxjQU9cLqCzm4yaqH0HJNSu2Zc-x24RKWM4QMORdKKPg0Q>
 <xmx:Ly5tZmnTfNrFElbb4lVSchkkZ5wHIv-kvQ__91PoNouX4L-KNR-z5WNg>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 15 Jun 2024 02:01:18 -0400 (EDT)
Date: Sat, 15 Jun 2024 15:01:15 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH] firewire: core: record card index in tracepoints event
 for self ID sequence
Message-ID: <20240615060115.GA497879@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <20240614004251.460649-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240614004251.460649-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Jun 14, 2024 at 09:42:51AM +0900, Takashi Sakamoto
 wrote: > This patch is for for-next branch. > > The selfIDComplete event
 occurs in the bus managed by one of 1394 OHCI > controller in Linux [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.151 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.151 listed in sa-accredit.habeas.com]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [103.168.172.151 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sIMTe-00028w-69
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

On Fri, Jun 14, 2024 at 09:42:51AM +0900, Takashi Sakamoto wrote:
> This patch is for for-next branch.
> 
> The selfIDComplete event occurs in the bus managed by one of 1394 OHCI
> controller in Linux system, while the existing tracepoints events has
> the lack of data about it to distinguish the issued hardware from the
> others.
> 
> This commit adds card_index member into event structure to store the index
> of host controller in use, and prints it.
> 
> Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
> ---
>  drivers/firewire/core-topology.c | 2 +-
>  include/trace/events/firewire.h  | 9 ++++++---
>  2 files changed, 7 insertions(+), 4 deletions(-)

Applied to for-next branch.


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
