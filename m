Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 035ED842080
	for <lists+linux1394-devel@lfdr.de>; Tue, 30 Jan 2024 11:04:45 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rUkyj-0004FI-S8;
	Tue, 30 Jan 2024 10:04:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rUkyh-0004F8-5F
 for linux1394-devel@lists.sourceforge.net;
 Tue, 30 Jan 2024 10:04:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vkYxaFes1oZgW4Bo/+u9h7Rx+x8nZ07dK3dg7jhwa6E=; b=Yt6NAKPWQX035E1DSSfxwbdlN9
 5Tzr763Mt1Vahv2CCcBjmh1RusbBofF1emjgwyeBCR18bDG/1Pg2RH2CUQckfkzdcRdhZ+f74Etl9
 ZPwewmPBbaTu3q8K38PQsFpOBbbgQ02p5HT/4PcjgvkH6uZvnR+l7lS6oAJf0GuRRi30=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=vkYxaFes1oZgW4Bo/+u9h7Rx+x8nZ07dK3dg7jhwa6E=; b=U
 qQ4LyctouNwy0hHIM1ODY5L4A/YXhntsVD87pmu41en62X+DxNwxgvZnZiw9g0DVbZYNQjZI9kdUS
 Ai4n2cCNEBaxtV2nLWo0n6zWoggA3CGoQtg3+GMwtdck4aTyitDKAK+GZmIxmlVtzHwJs5DZ8v5EC
 4jnnLZcDqdxHtj6Y=;
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rUkyf-0003K4-HZ for linux1394-devel@lists.sourceforge.net;
 Tue, 30 Jan 2024 10:04:27 +0000
Received: from compute7.internal (compute7.nyi.internal [10.202.2.48])
 by mailout.west.internal (Postfix) with ESMTP id 441433200B3B;
 Tue, 30 Jan 2024 05:04:15 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute7.internal (MEProxy); Tue, 30 Jan 2024 05:04:15 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm3; t=1706609054; x=1706695454; bh=vkYxaFes1o
 ZgW4Bo/+u9h7Rx+x8nZ07dK3dg7jhwa6E=; b=P+3lV22CLGLfCDfpvDORyKC7Hc
 QoBR3AGzjqhAPXOKM28UfXvq7hR+uHFl5HUiKR97N9slT02UbDp2aWjDNsy+sBqE
 mNfBcjMmLEZxjnQWeCBL7L/iBDr3IkOpUQdtUDRiHumnLFaRjtx9N+hHtq/Xd+tp
 6uSGldMzuoZWkzKxk+/VfqXqC/7xcxx+f2tID4LNXDrOFjPh5IrB6GRvkzo7JHjw
 lNgAiZvE3yT18PcnUpyFiQ+0HxcCWf8LV1IkV2iN8CVMWyDK2UNBTebwcfA3TA9G
 qNMji/VDodSLSUF00aQa3+e4Chb571joenbA0ewd3PDaB4Z+pDDcLuSvbX/g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1706609054; x=1706695454; bh=vkYxaFes1oZgW4Bo/+u9h7Rx+x8n
 Z07dK3dg7jhwa6E=; b=dBO9EM4YWxLTID2Y2gGjFNZi5YJ/s/tWtZ+afCI5RhLP
 YAxoGO6bqgNb2uKsV0zaRnHL//DT+BWT9hmw1kablSuk54H6igXWodPP1fN+WoVc
 j/FeXrgjspA1wa0nX8kMVTFOtbPmmRB9pc3pIJzS8DxptowSnWXHTUU+o70YSMaK
 foXZhioTC/daH0BITGocVwVt5+Sxm1xRXTWaY7HRxdsx0u0PoIQ55TM+AdypnnmI
 9E+Sk/3QN8su/dS3i8JPgfWBACQGO10FpTpCzBeI6Pijkw43HwXNuzRCIKcswpPK
 EC0gXoEFjOXR0/kC35ZM10d02nuab0MFt3pu6U0EDg==
X-ME-Sender: <xms:nsm4ZQ2KvezJle_DV1wnbtNS0X828sTDVWclf3iblOOLRtFmKn3Rdg>
 <xme:nsm4ZbGRregntRQjEhM2HBcZ9obCYGE5nzMdtGlU5TWQ-426THhSnDoqL2HwrCW27
 Fb8W5ZakwmJmVswcBg>
X-ME-Received: <xmr:nsm4ZY5mWMe1gxKjBoWc2CKG3buiY5cIG8ZAHCtlVc5mZ49441uFtti--KVnML9RCDAfxrRUzYPXNVAd8uzddiiK07asUxzd_Cjdp44PHo62>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrfedtiedgudduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffoggfgsedtkeertd
 ertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeeukeegvefgie
 ehfefhtdethfevjefghfeileehffefgedugeeigfduhfekgeehueenucffohhmrghinhep
 khgvrhhnvghlrdhorhhgpdgrrhgthhhivhgvrdhorhhgpddufeelgehtrgdrohhrghenuc
 evlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:nsm4ZZ2qkkB5vbHucH_cT4PcnDwwn-v1C2pE4Cl495yUv6JPk4Jwig>
 <xmx:nsm4ZTF3u-6yPlSZB0DewHpeLt-2UBc-vBWHoo1bI8_rBVlWNqcYfQ>
 <xmx:nsm4ZS9i-vIq869PDhPNBzR3SAx0kKtP0BgYRvdCJkLpCOWfFvsVgA>
 <xmx:nsm4ZZOM57Hq8kVZ_8P_nHbMk5kSQ_z-ecBHkocf1Ba3R3c7SAu_vw>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 30 Jan 2024 05:04:13 -0500 (EST)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] firewire: core: optimization for the quirk of Sony
 DVMC-DA1
Date: Tue, 30 Jan 2024 19:04:07 +0900
Message-Id: <20240130100409.30128-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, A quirk was reported that Sony DVMC-DA1 has a quirk in
 its configuration ROM[1]. It has the legacy layout of configuration ROM[2]
 with the quirk that the descriptor leaf entry locates just after the v [...]
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rUkyf-0003K4-HZ
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

Hi,

A quirk was reported that Sony DVMC-DA1 has a quirk in its configuration
ROM[1]. It has the legacy layout of configuration ROM[2] with the quirk
that the descriptor leaf entry locates just after the vendor directory
entry in its root directory. It is not the layout in the documentation
since the usual descriptor leaf entry locates just after the vendor
immediate entry. Current implementation of firewire-core fail to pick up
the content of descriptor leaf for vendor name. 

This series of changes is to optimize for the quirk, including a slight
correction of documentation for the relevant kernel API. The changes
are written to be accepted to the release candidates of v6.8 so that
they don't conflict to the changes in for-next branch[3], thus they
do not necessarily have a good look.

[1] https://lore.kernel.org/lkml/20240126011705.GA22564@workstation.local/
[2] Configuration ROM for AV/C Devices 1.0 (1394 Trading Association, Dec
2000, TA Document 1999027)
https://web.archive.org/web/20210216003030/http://1394ta.org/wp-content/uploads/2015/07/1999027.pdf
[3] https://git.kernel.org/pub/scm/linux/kernel/git/ieee1394/linux1394.git/log/?h=for-next

Takashi Sakamoto (2):
  firewire: core: correct documentation of fw_csr_string() kernel API
  firewire: core: search descriptor leaf just after vendor directory
    entry in root directory

 drivers/firewire/core-device.c | 18 +++++++++++++-----
 1 file changed, 13 insertions(+), 5 deletions(-)

-- 
2.40.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
