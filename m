Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 78D23951B90
	for <lists+linux1394-devel@lfdr.de>; Wed, 14 Aug 2024 15:12:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1seDno-000543-Tj;
	Wed, 14 Aug 2024 13:12:36 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1seDnn-00053s-29
 for linux1394-devel@lists.sourceforge.net;
 Wed, 14 Aug 2024 13:12:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mXQOUI9Nn8V2TZdfVFQKYg4yY73eGuHvVPjqgNl+nDw=; b=ZoHRupLqLkxnA7kYu9r/vOPCwF
 iNS79CYOkdb6eVLtQ/4s5ZmmGewglEfLmNGejHFIpobghGziLpSgAxf5wSc4vGyMvKDM5u5VIsr1V
 GlTj2c97yDijbfhD5FjLL/njtb6wf+iwJbgMR3WM5sYlb9+SBRR59gWQsqhtesIN6UsQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=mXQOUI9Nn8V2TZdfVFQKYg4yY73eGuHvVPjqgNl+nDw=; b=L
 1R/QIskWjQUjcMHBoglE/ti6rtZ7CQOAcBtSfuOEjQwATJQuvCphTj3ow/yrYvaVixBR4j/WHQxjP
 REb8XMHtaPXYaY/5cwxbvjLCkDA25E8d5m0BfeC1ejTRdXNIhFBwa+NSpA2AZ3t5WC0I3KnrjD+L1
 jVfpt1enY/FapMis=;
Received: from fhigh7-smtp.messagingengine.com ([103.168.172.158])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1seDnk-0007zv-W4 for linux1394-devel@lists.sourceforge.net;
 Wed, 14 Aug 2024 13:12:34 +0000
Received: from phl-compute-08.internal (phl-compute-08.nyi.internal
 [10.202.2.48])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id 544A5114E9C6;
 Wed, 14 Aug 2024 09:12:27 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-08.internal (MEProxy); Wed, 14 Aug 2024 09:12:27 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm3; t=1723641147; x=1723727547; bh=mXQOUI9Nn8
 V2TZdfVFQKYg4yY73eGuHvVPjqgNl+nDw=; b=XgaZoPKu5HJWIgKMzsW23+htp9
 je2yEvxYeBsAcFIaU478oVrreBkUh6UBuFcH1z08Ar+gjdksEVMLtCbrC6r0E3qE
 DKG0rW8lLe57htl6wQo+/9klqAyZXDguAlsmmLaSwc5is7DmcByrhiPBXWqeLVxD
 ERSXN/pZXTxhxURJPXgnLjtmdBzHdRHv7Tv2SNpRdPoNUJlcpeaGQtSs983MlYt8
 3qI58cBLC7XObiw57rog3W2qPN8W5R4G0AcMWTnYJOXwyHDID0EqzWylrWqsDcAR
 u+DxazNNbUKB3R1p1U1mqtZdFoxVVVFNV7IUteSLTSvw1oE7a1uoc5lUJtxg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1723641147; x=1723727547; bh=mXQOUI9Nn8V2TZdfVFQKYg4yY73e
 GuHvVPjqgNl+nDw=; b=seZ5Ti4UqSiwr1pvrAEw4jmmkh1Rn+OpBsez29OY8j2X
 9U5Xrp6EKZs7F3YBPiy9lVYSuYUfhYRsSVoFTDClnbUdTUWcECxf4dQc2wCTx4gX
 cUgkTsxenEbop3AC/5gGRZT+Fy60Zqu/y+pEnImhFf81KDJR63rt1ldgHRh+5kJz
 zpqajLKobzxV8FAkImVQsW/PfrdzZm6fWqbdm0TuDfTFISJ8lsx/6MvuJ0kScdnG
 TM/obWCgCh7pIrDMyO/4fSr9fSTWfRV4Zvf3H/TGXsuBKrLE3UbGflXEhHH/LW2j
 kM4uw9rGW/rZMvB5UUqSdIKl3Pu/y53Esy+7vp8wOA==
X-ME-Sender: <xms:O628ZvV1sFoHulGUawEWM9w13wl_n6TZlGTn6J873-yPq77c9DzzLA>
 <xme:O628Znlz7qL3WAUJs8WP18PgTdcCBYOfUhj9QOta4HN2xF6Ycpz8xRfnqfD54JHlU
 mngE7A4P-YgVxpd4NM>
X-ME-Received: <xmr:O628ZrY4MvTbv2t9JkCf7R0zxZAoY-JXKtPOXmIT3QlzBPCDZhJcoUWo31vJRis3u6A8YfwIqtHUYvjRTmlmvps0fsv_J7nVPbYYaYsxc6UM>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddruddtgedgieefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevuf
 ffkffoggfgsedtkeertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohht
 ohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtth
 gvrhhnpeffvdeuleffveekudfhteejudffgefhtedtgfeutdfgvdfgueefudehveehveek
 keenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqd
 htrghkrghshhhisehsrghkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopedvpdhm
 ohguvgepshhmthhpohhuthdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvghlse
 hlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhugidq
 khgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:O628ZqUVAXlTR_2jDlKH0DahbOlQFlzud6SIWYnTSV290GU2z9AFZg>
 <xmx:O628Zpk5SMWYSePSE57DocyiIUy0pStl8tA9e0kJoXwwvosZj27kEw>
 <xmx:O628ZneYcitISuJKeLwxE_0Y73rrQhzxWtkKuXtIkhlH-tMy5O-x2g>
 <xmx:O628ZjFmF6egvlvXvkc1MM35icw3-179_CE4NaUFjhPqRTLs2VHZFA>
 <xmx:O628ZuyA_WBaQH-GSz8D4aW9Gt1Mo-Ejjy-pmuYjrrXqksZospPQN-oS>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 14 Aug 2024 09:12:26 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 0/3] firewire: core/ohci: minor code refactoring
Date: Wed, 14 Aug 2024 22:12:19 +0900
Message-ID: <20240814131222.69949-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, This series of changes include minor code refactoring
 in core function and 1394 OHCI driver. Takashi Sakamoto (3): firewire: ohci:
 use helper macro for compiler aligned attribute firewire: ohci: remove unused
 wrapper macro for dev_info() firewire: core/ohci: minor refactoring for
 computation [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.158 listed in sa-trusted.bondedsender.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1seDnk-0007zv-W4
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

Hi,

This series of changes include minor code refactoring in core function
and 1394 OHCI driver.


Takashi Sakamoto (3):
  firewire: ohci: use helper macro for compiler aligned attribute
  firewire: ohci: remove unused wrapper macro for dev_info()
  firewire: core/ohci: minor refactoring for computation of
    configuration ROM size

 drivers/firewire/core-device.c | 3 ++-
 drivers/firewire/ohci.c        | 5 ++---
 2 files changed, 4 insertions(+), 4 deletions(-)

-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
