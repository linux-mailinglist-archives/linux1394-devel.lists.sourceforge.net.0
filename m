Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BB6F4FA243
	for <lists+linux1394-devel@lfdr.de>; Sat,  9 Apr 2022 06:13:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1nd2T8-0004nA-PH; Sat, 09 Apr 2022 04:13:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1nd2T5-0004mq-JR
 for linux1394-devel@lists.sourceforge.net; Sat, 09 Apr 2022 04:13:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SnrLR3Sr37N2IK+ovWdtsG2oHIe46e1XW5qxi28NvZs=; b=esqj3BC8TrBdbV55CIpYO/lOTO
 YBZaAQ4JhcrYqxycsN+2UNCVQoU17nWOvU+BmealC0wjx56Dge6TAH+RlfyX5g5w4OqIC2qMTBYaO
 74pH0OjWe7ez9MqiqD4wDHSAJgOTgd2ws/wwu8z2IhYUviplw82hCJWptpj1v+sD0jwE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=SnrLR3Sr37N2IK+ovWdtsG2oHIe46e1XW5qxi28NvZs=; b=e
 x6sGUtZ9yEEyNOw5kckcUKl+GujSvqzbFfOTGsFNTYVP5XTxiLpywKYW3Td6bWKfhxkQJ78wjIJfp
 D2EaLkVSeam8CJDLPE4F7awYu5RiCt0B5iuvlQLI84XmfxpPYggDngprS5WovXcmN4vZOqllvqv6I
 5C4liTEJz9+MpUMI=;
Received: from wout1-smtp.messagingengine.com ([64.147.123.24])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nd2T2-00086j-7y
 for linux1394-devel@lists.sourceforge.net; Sat, 09 Apr 2022 04:13:00 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id CF6E33201DE8;
 Sat,  9 Apr 2022 00:12:48 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Sat, 09 Apr 2022 00:12:49 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:date:date:from:from
 :in-reply-to:message-id:mime-version:reply-to:sender:subject
 :subject:to:to; s=fm1; bh=SnrLR3Sr37N2IK+ovWdtsG2oHIe46e1XW5qxi2
 8NvZs=; b=YyY0CKkeBs4TQ4eVNBXIMFQgjcC5X1ynOl+Y0Wz3ICfay3DcPhl/sZ
 akpkNVCR00i00WOOadJ+MBubnLhswKK21AcXcuWQgQFcN/i1EHavkIjZRS4Rnt+8
 1qzeIPmoLQjax6TFcFKdadzGTf1NGnw3KgTkja7TD14GVV0Hb6xb57A0BsHHtrbP
 lR7Ek8bhbeHPOhEnLwX9EVXXl7W/wuvPweDL+dw5L187xN5Di7ZkulzCsgqPNjuk
 p/+rDNbocBnEKsUvDBnLqiTGOVH76V4xf+FvSY84JBR0/3QbSTGY784vVyqeynYG
 VUg0j0SOIn/FSBw8kJSqN5rEMP/xhwPQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
 :from:from:in-reply-to:message-id:mime-version:reply-to:sender
 :subject:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm3; bh=SnrLR3Sr37N2IK+ovWdtsG2oHIe46
 e1XW5qxi28NvZs=; b=nK3P+zeW/T8wQL+Vg/eByQMkQFCjo6lpIqCE5RfyvRiS3
 wTcnh8817kj/hYjuDKKfTCo+fy/M1TSWiE747Ku8qOCzAPdYOLMOCjekoMiKjvSg
 PMCj2ztPqLFCGyvqrIg1UEQW3Fix/8WG0pQu5iV9455d/NqItzG+GBc6ql/qWjxe
 uIEYZvvi+K5+qb1PvHSC2qhqP35uQxUhCJ7R3DH/2h2TpTUZGVFS7hjg1PZtke6h
 8JhKvSj5/oUoEmK2wqtyKY1QyFIEPRxdXRR0w1vB4iLAsXhO7T9beJzCE3/T3dKx
 jcYCBeIyguz+nJRWtlCnhdpldQzCnlt8QaYWMXc4A==
X-ME-Sender: <xms:vwdRYn4yV8TT6W6H_b6oQP5UorSd1RvtwO6upMN3gLSRm64T0vEK1w>
 <xme:vwdRYs7PmwhsDOfoRNKjtFvj9En01kFezXCxYyuIqr__J08DOD8HJwXuXX48fOdm6
 fJzgdOSKTotfIAjvpg>
X-ME-Received: <xmr:vwdRYufmUtSkCKOiYrZxaD-hyEGVITvP9A8VTmyPpVlAHWIXULyN-x9_Lv-EDw7-aIoLu3AVs_gEKh90Aqp0sopvUm-kgT1gG7UIbZwXGbV2Q7A8efY>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrudekuddgjeejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgggfestdekredtre
 dttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhh
 ihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepteeiuefhjeekke
 efheetieekvdegfefhgffgvdeiheehhfehiedvhffgjeejuddunecuffhomhgrihhnpehk
 vghrnhgvlhdrohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrih
 hlfhhrohhmpehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:wAdRYoJGl1alGqvkd6Z_2H7mtoj3cWK4cBCJY4nmJkTMouF2ARwJrA>
 <xmx:wAdRYrKV3b-w9kFXGWEWwymTSuu0bCVVEZ2IeRVyWvQ3u9Xffs9rRg>
 <xmx:wAdRYhxF1aKVxyUkvK965n7LcmSlnyU2DTEe3e_EmV_7np2Fg2mvWQ>
 <xmx:wAdRYiXnDkm2a3HrgxRukcapBjsMZmaOqhKyYYXRsEkAwkD1B2aw3g>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 9 Apr 2022 00:12:46 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: tiwai@suse.de
Subject: [PATCH 0/3] firewire: fixes for kernel v4.9 or later
Date: Sat,  9 Apr 2022 13:12:40 +0900
Message-Id: <20220409041243.603210-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, This patchset respins patches posted before to fix some
 bugs for Linux FireWire subsystem. I expect them to be sent to Linus via
 pull request by maintainer of Linux sound subsystem since the path appe [...]
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.24 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [64.147.123.24 listed in wl.mailspike.net]
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
X-Headers-End: 1nd2T2-00086j-7y
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

Hi,

This patchset respins patches posted before to fix some bugs for Linux
FireWire subsystem. I expect them to be sent to Linus via pull request
by maintainer of Linux sound subsystem since the path appears to be
available after a short conversation with the maintainer. This patchset
is expected to be applied to 'for-linus' branch for v5.18 kernel, and
to stable kernels based on v4.9 or later.

This patchset includes below patches:

* [PATCH V2] drivers/firewire: use struct_size over open coded arithmetic
    * https://lore.kernel.org/lkml/20220210060805.1608198-1-chi.minghao@zte.com.cn/
* [PATCH] firewire: core: extend card->lock in fw_core_handle_bus_reset
    * https://lore.kernel.org/lkml/20220303183038.54126-1-dossche.niels@gmail.com/
* [PATCH] firewire: remove check of list iterator against head past the loop body
    * https://lore.kernel.org/lkml/20220331223601.902329-1-jakobkoschel@gmail.com/

Chengfeng Ye (1):
  firewire: fix potential uaf in outbound_phy_packet_callback()

Jakob Koschel (1):
  firewire: remove check of list iterator against head past the loop
    body

Niels Dossche (1):
  firewire: core: extend card->lock in fw_core_handle_bus_reset

 drivers/firewire/core-card.c        |  3 +++
 drivers/firewire/core-cdev.c        |  4 +++-
 drivers/firewire/core-topology.c    |  9 +++------
 drivers/firewire/core-transaction.c | 30 +++++++++++++++--------------
 drivers/firewire/sbp2.c             | 13 +++++++------
 5 files changed, 32 insertions(+), 27 deletions(-)

-- 
2.34.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
