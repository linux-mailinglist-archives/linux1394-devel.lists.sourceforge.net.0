Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A470D8B9A6D
	for <lists+linux1394-devel@lfdr.de>; Thu,  2 May 2024 14:07:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1s2VDY-0006ky-AY;
	Thu, 02 May 2024 12:07:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1s2VDW-0006kh-Jz
 for linux1394-devel@lists.sourceforge.net;
 Thu, 02 May 2024 12:07:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cpgbTJPINWDuCQJJISt3pMMPFgRhdl1XPatpsg7wiwk=; b=haK63cjTlpFRnA0hVR+NnbOGcG
 yvh/F8+bUIimRuhJaWhQ1QA6HoK/5EF7n1YO3NCLVADVacD+Uv7YBQC8aWewwW5lh8jAwNVytmtFC
 27qnvp/Rr2QHCC+zjHXRo7iHATuOOQ0F2wmvs/m3XO2yWkD9ADQkbEEtbBBBkq0q6udg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=cpgbTJPINWDuCQJJISt3pMMPFgRhdl1XPatpsg7wiwk=; b=A
 RjGe6749W2aNm7/2f0fMaisYzsRZEEoguh/0kY3WRqeQ+9I6yH2qwynCqhKhIu2CuOUrOo8TRY/We
 I7fTPQo+RnnglkDdDc7iHVOpeykJ0x8rVCoc2zJeAZ5a9+z2pzY2KDH+if89s3R0/kABsANaJ1OJ9
 Jfmdu4APeUGUVvTw=;
Received: from fhigh3-smtp.messagingengine.com ([103.168.172.154])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1s2VDU-0003qB-RR for linux1394-devel@lists.sourceforge.net;
 Thu, 02 May 2024 12:07:14 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id 2D5081140092;
 Thu,  2 May 2024 08:07:02 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Thu, 02 May 2024 08:07:02 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to; s=fm3; t=1714651622; x=1714738022; bh=cpgbTJPINWDuCQJJISt3p
 MMPFgRhdl1XPatpsg7wiwk=; b=IhGIqq0IlDnYjXzpQOPDFfN1Hqy3bKNpQZ/8t
 e6N55CokaWKPaD3diPRNc7gXwDfLqRUK201dEeOsxE0ILj/s9BiWiJhACUesCFzC
 9G1A8+zau5gMrg98EPqy72KqdtKqWEpv4rTkPKyhc1gRlXZ97NDi+EXc1PcWq4Fa
 pzcWzvGLWc9hxS3vSMqmRfjElmj2RSDsUbHb8oa6bGbtIM8wj7YKrNg9aVp6NNep
 kFu+W4gvwiqmiQjBuram0xO5iMImeTdOzjqCXHQIdjIHcptGQHnp7BS984WhxnHS
 BPzKeyQtr5JeuG0vinUP//Ud3hbNDTWx60c21V90U2VcVxo1w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:message-id
 :mime-version:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
 1714651622; x=1714738022; bh=cpgbTJPINWDuCQJJISt3pMMPFgRhdl1XPat
 psg7wiwk=; b=a60KI2QLZR8VqBq6MUlGmA3acYbHyCqU2ooMtF2B//imRHm3RFJ
 kJ0lFAr4q0HHIgsfGqgzKTinoRcj0fTRKP6uS1GrjT2kU+5jPBy+uVEbsH8b91sy
 NiDrIcLVSvFHepj7C3MZX908U+jsRTO3ufwX4jFv0/v4BcoIHr3pJsa/Ns6yrPO6
 ft3dRQJxd1/OhRbxyLm8o+vYOz+hkXMASF6kfJKTWZ8XYFMtv54+84mh+sa0ELai
 HaJxDe8L3w3XmUN+S305Pa5fRlpefDhppFtbwYRoCGKwSaK+g4IYHQJzJNnpyBBq
 GAgo9pfhmdZkA18mAgxbTCn0ZY4fu3H4ZOA==
X-ME-Sender: <xms:5YEzZsGv6CIlZb6vLAlPo_mbTo1DrbRrFBYFIxOvWEoYGd_h1Scbaw>
 <xme:5YEzZlVX3JbGrF0uUtK9gLAHzTckg1fzvcvgg9RF82_4FviD-7mdBZnYtrJLNkUDF
 qNopVFxQi1d6XXSQnk>
X-ME-Received: <xmr:5YEzZmLlA2LqakGZE8MzRrODdqyqncwgtNmWpXCNFMa_SFu8y7cdhj9go5hUnpkjTKfdqmlNxX2wITjF8qT6J3JmdnLcERglwK0>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvddukedggeekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvvefukfggtggusehttdertd
 dttddvnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeetfeeiteefve
 egvdfggeffheetleejkeekleeugeffffdtgfdtteetkeevvddvgfenucffohhmrghinhep
 khgvrhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrg
 hilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:5YEzZuEi-vJiXAbUNSnbtFsexGARMcJ2v0lP7MkFKV9ufxRCeBrdFQ>
 <xmx:5YEzZiXEhrE9Ze15w-U7vlmr02eYT4zAybkus_EnMJBDI7b6FCeqQA>
 <xmx:5YEzZhNenRM70LNDeN0gyno5r34YuwrRFzqUOFdfI2l0LwUVMVIz5g>
 <xmx:5YEzZp2xp2KZRIOYuhHTjxdbbir8RTryKHUsMwh40Kc1knHYZeziZw>
 <xmx:5oEzZhRTHpBA_0vsIRLEkuP6AD__F0U2dnRvPIXON1l_Gp6XBh2bcLOb>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 2 May 2024 08:07:00 -0400 (EDT)
Date: Thu, 2 May 2024 21:06:57 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: torvalds@linux-foundation.org
Subject: [GIT PULL] firewire: fixes for v6.9-rc6
Message-ID: <20240502120657.GA121265@workstation.local>
Mail-Followup-To: torvalds@linux-foundation.org,
 linux-kernel@vger.kernel.org, linux1394-devel@lists.sourceforge.net
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Linus,
 The following changes since commit e67572cd2204894179d89bd7b984072f19313b03:
 Linux 6.9-rc6 (2024-04-28 13:47:24 -0700) 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [103.168.172.154 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1s2VDU-0003qB-RR
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
Cc: linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi Linus,

The following changes since commit e67572cd2204894179d89bd7b984072f19313b03:

  Linux 6.9-rc6 (2024-04-28 13:47:24 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/ieee1394/linux1394.git tags/firewire-fixes-6.9-rc6

for you to fetch changes up to 09773bf55aeabe3fd61745d900798dc1272c778a:

  firewire: ohci: fulfill timestamp for some local asynchronous transaction (2024-04-29 18:41:00 +0900)

----------------------------------------------------------------
firewire: fixes for v6.9-rc6

The following two driver fixes:

* The firewire-ohci driver for 1394 OHCI hardware does not fill time stamp
  for response packet when handling asynchronous transaction to local
  destination. This brings an inconvenience that the response packet is not
  equivalent between the transaction to local and remote. It is fixed by
  fulfilling the time stamp with hardware time. The fix should be
  applied to Linux kernel v6.5 or later as well.

* The nosy driver for Texas Instruments TSB12LV21A (PCILynx) has
  long-standing issue about the behaviour when user space application
  passes less size of buffer than expected. It is fixed by returning zero
  according to the convention of UNIX-like systems.

----------------------------------------------------------------
Takashi Sakamoto (1):
      firewire: ohci: fulfill timestamp for some local asynchronous transaction

Thanassis Avgerinos (1):
      firewire: nosy: ensure user_length is taken into account when fetching packet contents

 drivers/firewire/nosy.c | 6 ++++--
 drivers/firewire/ohci.c | 8 ++++++--
 2 files changed, 10 insertions(+), 4 deletions(-)


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
