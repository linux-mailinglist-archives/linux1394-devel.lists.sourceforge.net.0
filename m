Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 997C590734B
	for <lists+linux1394-devel@lfdr.de>; Thu, 13 Jun 2024 15:15:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sHkI6-0005SG-TF;
	Thu, 13 Jun 2024 13:14:59 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sHkI3-0005Rn-Qb
 for linux1394-devel@lists.sourceforge.net;
 Thu, 13 Jun 2024 13:14:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=P1562d71NK6Q3gwSAvpUv5imcbgap8NODNrDu/VOPAc=; b=e5ynpQU2vrARlTyryomuKfqQT9
 TlZ1e/PSV1/nAKXjDSg5XsJIeU5b2vLTffK/RxV0/o/ZsSOunlGIjoKUXk4ktSMCt/Q0ObsdC/aDi
 I37xqvpqi7wqptdHg5N8FHoluaXJlKXtpshyu5wjMGlflB+V5QSF6jkFbkYAJ8NHfpQw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=P1562d71NK6Q3gwSAvpUv5imcbgap8NODNrDu/VOPAc=; b=C
 Xwzthst8Dis9qlUSmIW/YjqKgEVBSf1m75+sg/YBo2BUGxZUePC12xkiznhh3hVdMXq6WKxF97eYk
 LQiwTOymxuxf50aPp0SZBoPAhkvtj6OGT9t0jRHd7VimBT6X0HFAgFgFyjxfE33aHFgQFCpQcn41A
 B5GvbHy3nahbMie0=;
Received: from fhigh5-smtp.messagingengine.com ([103.168.172.156])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sHkI3-0003lt-OB for linux1394-devel@lists.sourceforge.net;
 Thu, 13 Jun 2024 13:14:55 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id 66F0711401D2;
 Thu, 13 Jun 2024 09:14:44 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Thu, 13 Jun 2024 09:14:44 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm1; t=1718284484; x=1718370884; bh=P1562d71NK
 6Q3gwSAvpUv5imcbgap8NODNrDu/VOPAc=; b=nr8HeikeoDJplTeazpG0Af3UM8
 /SXrM5StOrgF5+jW6Tt9nR9WQNx7grZzSShB40sXhz8ZXmBZfPbYb6VKtS1AJOin
 dk+zBOxG3qR+1q724OghcaSyagV21kf55uEyimZQUWsK+kxbyEuSrh1nFYyy5GpN
 urGoStEv6kCMG9pe/gO8SFw42wYoBxwKogtmoMYGxMDHVEysaUwGUdEkrzz31v5m
 +XDMn6NDggewaHp6eSZEN2Vxph8QMhlePQH01iJep+EcWl7cGr0aFdKRqSxvYWRb
 2q/2VaSh5kZ7XLbM94n8jAXz3iXV28Kj2/MKQjFH8jr+UvmL0QRmVeXJcV1w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; t=1718284484; x=1718370884; bh=P1562d71NK6Q3gwSAvpUv5imcbga
 p8NODNrDu/VOPAc=; b=AZU3OYwmXiG2ym7qIZjZTP1n7QzHpklfveFFSya7ABeZ
 UVP3U/OXulooEVkiQJu0OUZ1mVBQGsEKjxXo2CG4/3IUyV6gQQZZEls3KnjoGOTk
 tIF2i8SoGMC4zyatsYxg0mDAymFtVBllkQQuDgCGY2r9S+BmTUOFdfA5eCJixc2S
 0M/J706X1lReQKl4kbdRyjtSSJPzsEU2WNBZD/KfT+Cwa4oZfe9pNq1huMXnWnkT
 wJLUeK9ZJ2t38Is71m41VDH6DoBqa896bKiuLsfgt+/+YPf8oW68T2bX+JIguXc9
 ycP5yxochGD3cc9aQtm+lCHlUYejcaYBo9lChXUKjA==
X-ME-Sender: <xms:xPBqZpHm0dB3YwsefIy7Hp9DgMCdP5L3L1L7Bh03rrW0X-_KgbNZ1Q>
 <xme:xPBqZuWNJxK0AZ7N-nZNIkcqfMavX4K15zZzMeuro5_feuJcuMYWKjIvfepaxWD4B
 oMPjeT2CPG9VqbWQOg>
X-ME-Received: <xmr:xPBqZrKAz6BbmlAAOC5f06xD2JQE4wcUTcZhCq0bI2tZZ2fgRAFjJTIzI2wQluh6wjKW1J6hky3pQ7Oj7MCEPdXWBNqL88UXwxQpalT_lYGNVw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrfedujedgheelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffoggfgsedtkeertd
 ertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeffvdeuleffve
 ekudfhteejudffgefhtedtgfeutdfgvdfgueefudehveehveekkeenucevlhhushhtvghr
 ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrg
 hkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:xPBqZvEj9SrK-6F1Hl0lcmSYzrUUUmMGGIuhPQo6xzvRk5fLal7azA>
 <xmx:xPBqZvWXGuWCPiUD7PgudFbOpsKzE1S6A_fHRKbsyu0fwZ8v5mOG1Q>
 <xmx:xPBqZqNtm33v6LeQF9_But69uJJzRk1ehQpsCZtRAjLPMDZvvjqOLw>
 <xmx:xPBqZu2xj_7_hh6fUk95UzR5O00vXV_Z7lUnZXttEVc_JXtCLQVAZA>
 <xmx:xPBqZsjOAusaF6Am4HZbTMUYe8Rj216eZCVKaMjalhyKO-fOr5Y3wIZF>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 13 Jun 2024 09:14:43 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 0/8] firewire: store the numeric identifier of card in data
 structure for tracepoint events
Date: Thu, 13 Jun 2024 22:14:32 +0900
Message-ID: <20240613131440.431766-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, In v6.10 kernel, some tracepoints events are added to
 record IEEE 1394 asynchronous communication. In the case that multiple 1394
 OHCI controllers are available in Linux system, it is hard to distingu [...]
 Content analysis details:   (-0.2 points, 6.0 required)
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
 [103.168.172.156 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.156 listed in sa-trusted.bondedsender.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [103.168.172.156 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sHkI3-0003lt-OB
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

In v6.10 kernel, some tracepoints events are added to record
IEEE 1394 asynchronous communication. In the case that multiple 1394 OHCI
controllers are available in Linux system, it is hard to distinguish
the controller used for the communication, since these events have no
member in their data structure to express the used controller. It is a
bit inconvenient to diagnose things.

This series of patches is an attempt to solve the issue. In Linux
FireWire core, the available controllers are maintained in list, and
each of them has its own numeric identifier (=card_index). In this
series, the index value is added to the data structure.

I would like to put the change to v6.10-rc4 (or later) as the part of
fixes if receiving no objections.

Takashi Sakamoto (8):
  firewire: core: record card index in tracepoinrts events derived from
    async_outbound_complete_template
  firewire: core: record card index in tracepoinrts events derived from
    async_outbound_initiate_template
  firewire: core: record card index in tracepoinrts events derived from
    async_inbound_template
  firewire: core: record card index in async_phy_outbound_initiate
    tracepoints event
  firewire: core: record card index in async_phy_outbound_complete
    tracepoints event
  firewire: core: record card index in async_phy_inbound tracepoints
    event
  firewire: core: record card index in tracepoinrts events derived from
    bus_reset_arrange_template
  firewire: core: record card index in bus_reset_handle tracepoints
    event

 drivers/firewire/core-card.c        |   6 +-
 drivers/firewire/core-cdev.c        |   6 +-
 drivers/firewire/core-topology.c    |   2 +-
 drivers/firewire/core-transaction.c |  30 ++++----
 include/trace/events/firewire.h     | 113 +++++++++++++++++-----------
 5 files changed, 92 insertions(+), 65 deletions(-)

-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
