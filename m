Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CB4B594557A
	for <lists+linux1394-devel@lfdr.de>; Fri,  2 Aug 2024 02:36:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sZgHL-0000ps-71;
	Fri, 02 Aug 2024 00:36:18 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sZgHJ-0000pk-UD
 for linux1394-devel@lists.sourceforge.net;
 Fri, 02 Aug 2024 00:36:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Xob+tHyOMTXsAL0OHM/0IJJHBwyznfprn3VWRCkTfDU=; b=IVdJrqqzChhb0cm/IuGP63CsdB
 bm7SBfy8hClYIg64M+MaVXvD0PdKgRqwJ1FdZbtnBkiug7+6yqXcSkpOJYRfd2efPosayB64p6PN7
 b5OB6LyLgwVlOdgMysJErsWXyMdhE7xX+okwvmDUyPmoHbxmcNQeKQhl7EbwbhNfB02w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Xob+tHyOMTXsAL0OHM/0IJJHBwyznfprn3VWRCkTfDU=; b=l
 N42Uran5l6R9pVqIAq3PSN8iUqJJ0/VaAfii9NiUaBQjZ5jPq5EMoGf/fmHTED9h52vsHmWaDdxYP
 M4EIpmQF02wY5036RuOPmFpXIPvWD312fMAGuFKyV8YEgDH4T6mIX7HCObGaMeQIz16DY3x/hFn4A
 TBMHT5GqwG/Xeiro=;
Received: from fhigh3-smtp.messagingengine.com ([103.168.172.154])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sZgHI-0000s7-Bi for linux1394-devel@lists.sourceforge.net;
 Fri, 02 Aug 2024 00:36:17 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id 80DC0114FA9F;
 Thu,  1 Aug 2024 20:36:10 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Thu, 01 Aug 2024 20:36:10 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm3; t=1722558970; x=1722645370; bh=Xob+tHyOMT
 XsAL0OHM/0IJJHBwyznfprn3VWRCkTfDU=; b=z2JVsdopzI4AB/yLrvohE+ZTRk
 Caqj8vDwl7bFR1WrDrA5kkgF64gM0u4eipEt5CBeKpqJDdWPsPQT4yBxDKFr2VMD
 slRJqiEeofFuHzLWGRu3kwQPrOaC8z307pBCq2nPsm/UBb4m/PqCvODIA80bYz5h
 YJ1lymum2cPFHQPDM7lfwENnuK0MWTPo4zj7dj3v9QAT+LQhDSwYSLyUvMctCW0w
 VOY6j2M9jY1UGczxtUvGQmnX6D7yenNTOdJpSKv1FyE2z6s4Eg95eOuVKDu5oOSk
 QOJd3UAyuzsfLGWTGTT5Fe4wB/pPDRrZC0cMxpqokSep9xPzyDpUIp0mZUmQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1722558970; x=1722645370; bh=Xob+tHyOMTXsAL0OHM/0IJJHBwyz
 nfprn3VWRCkTfDU=; b=jl9J6JjQHmShptgiR1dfGVz1F+IVBzaikZ6tzg/V6QU+
 js29YOs+v/NMJAljuapLKfu5Z7iaJozvyxCGTo7KV/2pN/XEU0xylzQySBC8Is2U
 D1RwlYaUsOxYknMllYIcxVWag3w61m090M5muIuCGL0HIFiHJkHz4VwXYhLGoxRC
 YKwlf3IA1qT9fgeVFOOdetR+fkifmNiPiHHdxC97BuSYjiV8XeigeEz0SS06jIvN
 KJ+3YwXNbZYCut3aSGdy47v78X+TxWkQnHR0/yy6Wa+3+mWHkcn+occA0zgoG+SR
 680r+FV2v1LNR6iPxa/nWOfxNRM7ESVQh9LawcwrQA==
X-ME-Sender: <xms:-imsZi09SMn0LNKxBEUqsu4fU8UZ3k2P6WWsk4ACEe0vwk0uDs1eXg>
 <xme:-imsZlGWKk5SsoWjte2SMq_AEwrEO9ngDaHl_YCCttPJlUthzp_L5ApIUGo6L-cH9
 kqyIom7ZNxOD6P8erw>
X-ME-Received: <xmr:-imsZq4eO1Nw92USaGvMkHyfAu7h17RVz7IBSyFuu9nqFSwV-BV5PPbculJ6E9X8EXWHXIv5IFqSd8XZRIzVZd6YzwR2DH87onOGBRRbAzYy>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrjeelgdefjecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgggfestdekredtre
 dttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhh
 ihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepffdvueelffevke
 duhfetjeduffeghfettdfguedtgfdvgfeufeduheevheevkeeknecuvehluhhsthgvrhfu
 ihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkh
 grmhhotggthhhirdhjphdpnhgspghrtghpthhtoheptd
X-ME-Proxy: <xmx:-imsZj3QB__slypXMXmfBEgWM2mDwuZVz6pdeACL34p2SA6HM7jV3A>
 <xmx:-imsZlE86rV10kXR6hjY9IKGXe5t75n6dpgm4eD4JUi2UjgMZXxUMA>
 <xmx:-imsZs8Qf0Ae-posUAGF72G37YJ-zm3ucxS_i8GQy-0yn9ZbyHBSFA>
 <xmx:-imsZqmzpRIV71gA2lq7VGtMZlgkMuXEpzMKSzJDa_pdn38N4_rrmA>
 <xmx:-imsZqQiKLLgcq_HMj5FW7YJSt983TKiEWxyHsZko1eK12TnXTirw5Ps>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 1 Aug 2024 20:36:09 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 0/4] firewire: ohci: add helper functions for data format
 specific to 1394 OHCI AT/IT DMA
Date: Fri,  2 Aug 2024 09:36:02 +0900
Message-ID: <20240802003606.109402-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, In 1394 OHCI specification, the data formats of AT/IT
 DMA are specific and different from packert format of IEEE 1394 specification.
 Current implementation includes some ad-hoc lines to construct the [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.154 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.154 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [103.168.172.154 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1sZgHI-0000s7-Bi
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

In 1394 OHCI specification, the data formats of AT/IT DMA are specific
and different from packert format of IEEE 1394 specification. Current
implementation includes some ad-hoc lines to construct the data, while
it is not so easy to read and understand.

This patchset includes some helper functions to serialize and
deserialize the data. These helper functions are tested by KUnit, and
replace the ad-hoc implementations.

Takashi Sakamoto (4):
  firewire: ohci: add static inline functions to serialize/deserialize
    data of AT DMA
  firewire: ohci: use static inline functions to serialize data of AT
    DMA
  firewire: ohci: add static inline functions to serialize/deserialize
    data of IT DMA
  firewire: ohci: use static inline functions to serialize data of IT
    DMA

 drivers/firewire/ohci-serdes-test.c |  66 +++++++++
 drivers/firewire/ohci.c             |  66 ++++-----
 drivers/firewire/ohci.h             | 199 ++++++++++++++++++++++++++++
 3 files changed, 299 insertions(+), 32 deletions(-)

-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
