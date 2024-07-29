Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 819A493F6F3
	for <lists+linux1394-devel@lfdr.de>; Mon, 29 Jul 2024 15:47:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sYQi9-0004UV-8M;
	Mon, 29 Jul 2024 13:46:49 +0000
Received: from [172.30.29.67] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sYQi7-0004UI-SW
 for linux1394-devel@lists.sourceforge.net;
 Mon, 29 Jul 2024 13:46:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rozWhg0J1WWVKDKNRV8YgKBVCNPoo9SXVgPoDqNdCao=; b=HVRAnKhdAcno2hdetOkcVvyyZg
 H/3KzyIeftsdBhGeZf2ODHa7+rEdUSDplAL05ljMzaN9J2EcHHmgYccPENUGhPmxcuR2ZoZAXp0be
 PVXLOd75Pp43JvUS2AKULqj/jU8QATHyuynFs9YBLAjyLqwr9Ep+pXdu8xuuz7iD+BH8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=rozWhg0J1WWVKDKNRV8YgKBVCNPoo9SXVgPoDqNdCao=; b=P
 rk6EawDivgMOWqWplV+VURN8CcOEjzbHxxR3kg5baMS5MDBu5MVxBJt1vZb5v4enjbuaAgulsFcd1
 CzKZqAHNyNSScRXdGW4NkjI5qgxaApA/PlPFIM4XM3NIGP30T2xILSue9k4yaZ2RRgvo8CkV7oo4W
 yS/BAptgDs8PuOR4=;
Received: from fout2-smtp.messagingengine.com ([103.168.172.145])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sYQi6-0000LT-Uo for linux1394-devel@lists.sourceforge.net;
 Mon, 29 Jul 2024 13:46:47 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailfout.nyi.internal (Postfix) with ESMTP id 4C0F71380116;
 Mon, 29 Jul 2024 09:46:36 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute2.internal (MEProxy); Mon, 29 Jul 2024 09:46:36 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm3; t=1722260796; x=1722347196; bh=rozWhg0J1W
 WVKDKNRV8YgKBVCNPoo9SXVgPoDqNdCao=; b=jwy6Zcqk8R1AQgYwp7OYIGJPHW
 naKyLzbz0N69Zbni1Gg0htolgcn53HJR9jX4koE9tobhlj7wEl326IX0+FonS5q1
 CUjjiUQyqtmhw0G2Xbl4iG41Jbtp9PKV8E8QCzTb92KF0EquAvzUgLANOWooRdM8
 jNoo1HGN1m3UnwwYuCnxH2hYmiP95+5lv3urMXb/dKodw34ttxxTQCUSJjID6Bxe
 Eltkj4n8fED0ogiiWEoJ9HVHFUJ2FPpzd3tZkq0ZHr+GPyAK4F4E8u2tSZodWYse
 a0iGSc9Cyx7ro/yycWl0eCdhv4An3d8vMfS/Vf9m9ThNqk0iF2g7+PH8TgsA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1722260796; x=1722347196; bh=rozWhg0J1WWVKDKNRV8YgKBVCNPo
 o9SXVgPoDqNdCao=; b=ac0YGOqZvZZ3l0vcAoQLZy2uOVk/2fqgoYCi4n7GpqjS
 YUDNe3X1GYTFpGF9Lv8KDiPqV2+czkyuyUvjKEsfa4tJ1w+SRAnsMR/nAo+oVtaH
 mwUaakC0jkfWmO4Ym0OAhGUjduiHkWrc5lFijZ+V2OAoGk6fQ9VjGlrw1bXJYQSl
 7/to0Jfmeq5BziIhmFZk/vYQZnz8JvqwiFdFSgwYk0moRo1Yz2cjjU2cHNr3c0S0
 LTx9cGij/3xHdJbpSd8UZoH98dt/65AXDp9OgNZHzZE6VpgMfgW1Mvh8ZHkBERs6
 AFSigCksaeC1MMzp56C6W52FJOowl8bj/aYxUINhyw==
X-ME-Sender: <xms:PJ2nZlviqi8Fel8BgHART9srxwK_QAVjizW_pXCyST4n-sk24asddw>
 <xme:PJ2nZuc--rBfxK2RDKwiKvc1BQd_nU4KSwRGbDBWUT1TaQQoisBx5UUK6v9HCIpEE
 FBA0IYjc8kFSsbxgjY>
X-ME-Received: <xmr:PJ2nZoyqZHVNUrziRmX75XrQw7sN5qFJgpmo7KXCy4MvA1Pw9A0Ve5PRz_viPz-QC0EX6eqIw_snRu8c1h1DYO7liA2nqGksWG2V_IX7qkHYRMg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrjedvgdeilecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgggfestdekredtre
 dttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhh
 ihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepffdvueelffevke
 duhfetjeduffeghfettdfguedtgfdvgfeufeduheevheevkeeknecuvehluhhsthgvrhfu
 ihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkh
 grmhhotggthhhirdhjphdpnhgspghrtghpthhtoheptd
X-ME-Proxy: <xmx:PJ2nZsPRCVOZWKDT5GDVID9NzyL8PQqyXmOG6GiPspvljvw5o0EMTA>
 <xmx:PJ2nZl9Gq-MRALA9V5uu6lZQoCFkTdnxGL0NWCQd7OEhnhhQ6vYMKQ>
 <xmx:PJ2nZsXsoJPo8TLzynPnbZM9NiAxZmcQFU0uXVlVKDT4kwMEuytbWw>
 <xmx:PJ2nZmdfd_7APBBd5yB9Wyogy_g-mmGE85RWJwDCswjG4-jcFRU3lQ>
 <xmx:PJ2nZnIgT6OdMfLfhzw1fKSpQtIDFDykoNFZjqs4x04ThbYDIhVREQW0>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 29 Jul 2024 09:46:34 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 0/3] firewire: minor code refactoring for link internal data
Date: Mon, 29 Jul 2024 22:46:28 +0900
Message-ID: <20240729134631.127189-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, The current implementation of both core functions and
 1394 OHCI driver has some points that need to be refactored regarding the
 handling of link- internal data. This patchset is for the purpose. 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 -0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [103.168.172.145 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [103.168.172.145 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.145 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.145 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1sYQi6-0000LT-Uo
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

The current implementation of both core functions and 1394 OHCI driver has
some points that need to be refactored regarding the handling of link-
internal data.

This patchset is for the purpose.

Takashi Sakamoto (3):
  firewire: ohci: use TCODE_LINK_INTERNAL consistently
  firewire: ohci: minor code refactoring to localize text table
  firewire: core: use common helper function to serialize phy
    configuration packet

 drivers/firewire/core-cdev.c        |  4 +++-
 drivers/firewire/core-transaction.c |  2 +-
 drivers/firewire/ohci.c             | 37 +++++++++++++++++------------
 drivers/firewire/ohci.h             |  1 -
 4 files changed, 26 insertions(+), 18 deletions(-)

-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
