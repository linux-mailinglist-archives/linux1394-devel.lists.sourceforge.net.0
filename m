Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 81FD19556AB
	for <lists+linux1394-devel@lfdr.de>; Sat, 17 Aug 2024 11:11:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sfFTM-0006Kd-Q0;
	Sat, 17 Aug 2024 09:11:44 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sfFTI-0006K9-Jp
 for linux1394-devel@lists.sourceforge.net;
 Sat, 17 Aug 2024 09:11:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=f0gyP4x/rZij5x6yxUUAtFK2OLWmK/9anptWI0/I9oQ=; b=jwWsWDnAKFkld10AvNzHdfAezE
 hP0Uv10SF3lwyLIJL5gi2vt0JIiX8eur/ZJlOjkV0NokAnBGAYnUZcjXRN/Fgz8vr330JzDkaF4AL
 TW812k+AMlzWBk71/j+d4ADzvpHSXSVZiWjL9TvpITH0NAMtJXIJWqGxoHogJLu2CK4I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=f0gyP4x/rZij5x6yxUUAtFK2OLWmK/9anptWI0/I9oQ=; b=D
 32Km+biqH5SlWqv6bJbyoK0Zxl2e9QpJ1ajIX2CXrhgnbrD+3Ksjnj6XKQJVj7zCcuWilse3ktwf1
 zuE8OwwCN0wdDLu+GUvG551bTBD+e8W1JVq34EgRTGYUkhnK36ohraet51tN1c3lPMw9W2Mpqmk81
 yourbMLRO9j5ziO0=;
Received: from fhigh1-smtp.messagingengine.com ([103.168.172.152])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sfFTH-0004Tq-CV for linux1394-devel@lists.sourceforge.net;
 Sat, 17 Aug 2024 09:11:40 +0000
Received: from phl-compute-05.internal (phl-compute-05.nyi.internal
 [10.202.2.45])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id B66091151BB5;
 Sat, 17 Aug 2024 05:11:33 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-05.internal (MEProxy); Sat, 17 Aug 2024 05:11:33 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm3; t=1723885893; x=1723972293; bh=f0gyP4x/rZ
 ij5x6yxUUAtFK2OLWmK/9anptWI0/I9oQ=; b=n4QGgbTuDqyGzyEhyedr85PXQb
 Icj0XJNlBRNfIIDWHZqrE4dla4nG+YhcXYOfMXJk4+1Zop0cqGAAuVkZT5uAO0Gj
 gdyCtb30YpM34x2BapQzJuDo4jiUEopiNmUrlJmRxuu7mdrC7tKfPvLz7n/XjDFd
 QHY92y7Z5WS6/QWoNqrT7v9YofkLX+UWoYK8gNypSENSU/UYxgrNOhWomjyBH+FH
 1M1w4tdERqwZ4JZCfXoM/uNA/Av/+9OqKwXnwU8dPcd6MXyucMJxrVqRy2St0KvY
 bdg/XLJcEK7E/3Zs/nxGScKPdfAR6Wz5E5tgOPYuAGM4DMOSeTe65qbH2bsg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1723885893; x=1723972293; bh=f0gyP4x/rZij5x6yxUUAtFK2OLWm
 K/9anptWI0/I9oQ=; b=L7RhsaH06+J16CutMW2D3gkEV1QhSwD6myQNLiWglVgC
 Hy0lDv0gK+IeELWay2IXVFl0t+zgL/rIbBiNDK1xIQxvLLf0e6ZSafeHI1D9bHcA
 3Z5xW0nl2FrrXbHztb8soEkdjVpgpEq2JHR9ZScLe5OTECevbm24+E0M5z8RR6fB
 v7ilc4ZVTMQjADks5zZugqLOfXp2fZe3I7yRsZK6hCn5eDFEK0Vt9pjbwUZ1DYFa
 qSV/2O94p0ENBzbfBs9g/H8PRdisau8vcsQXViP3HN5ZDZzvBKMyn5euspFBsWPt
 mUKDS5dhOZhThx5SZ/KotOIJB3kcsEuKL8PhIl2Euw==
X-ME-Sender: <xms:RWnAZgMjQ0L_9YVzPFHGPI_FwUjgvf4c3wYxzTfsbn_OYcuunS3Z_A>
 <xme:RWnAZm-2xLCi9yhfvNPGf8hn5L58Hb4frdVSbh3Vs3rTW5B2zLQT-Fe5a5RAfxlKn
 Vi9SjTgBm54TlM4NIA>
X-ME-Received: <xmr:RWnAZnS_XWfep5GarjMvJIrOnR95m29k6B69BhIYLmN35x3EvxzV87RqrjShsRHMjs_rI1Qu1P3BvUGP0bEutJVe3omEJ88L3wCZ_MQ94IwvOQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddruddutddguddvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnh
 htshculddquddttddmnecujfgurhephffvvefufffkofgggfestdekredtredttdenucfh
 rhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihesshgrkh
 grmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepffdvueelffevkeduhfetjedu
 ffeghfettdfguedtgfdvgfeufeduheevheevkeeknecuvehluhhsthgvrhfuihiivgeptd
 enucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggt
 hhhirdhjphdpnhgspghrtghpthhtohepfedpmhhouggvpehsmhhtphhouhhtpdhrtghpth
 htoheplhhinhhugidufeelgedquggvvhgvlheslhhishhtshdrshhouhhrtggvfhhorhhg
 vgdrnhgvthdprhgtphhtthhopehlihhnuhigqdhkvghrnhgvlhesvhhgvghrrdhkvghrnh
 gvlhdrohhrghdprhgtphhtthhopegurghnrdgtrghrphgvnhhtvghrsehlihhnrghrohdr
 ohhrgh
X-ME-Proxy: <xmx:RWnAZosowJgTL14O3xE_xLnyEwx0TRRbzsfB4wAUqTDs2DmfoE3jtg>
 <xmx:RWnAZofppdTq_ZP_wzmNL11bJ7l-kblVJRsVs8Q56nVF0lxmwKcjyw>
 <xmx:RWnAZs1UznVSjFpEN8dMhbPNsgIpZPZNOQxXvT3Q1leghcBxieEr-A>
 <xmx:RWnAZs_ao-5FJh4PrOBdDdQxS_moEXXgRspLBif6kkchmjEi5dL-8A>
 <xmx:RWnAZg6njdCqRHjFugfa6RHzGyMvJQzxs1tq-1EZJfwb4HGpHh2eU_h4>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 17 Aug 2024 05:11:32 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH] firewire: ohci: fix error path to detect initiated reset in
 TI TSB41BA3D phy
Date: Sat, 17 Aug 2024 18:11:28 +0900
Message-ID: <20240817091128.180303-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  A commit 404957c1e207 ("firewire: ohci: use guard macro to
 serialize accesses to phy registers") refactored initiated_reset() helper
 function, while the error path was changed wrongly. This commit fixes the
 bug. Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.152 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.152 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sfFTH-0004Tq-CV
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
Cc: linux-kernel@vger.kernel.org, Dan Carpenter <dan.carpenter@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

A commit 404957c1e207 ("firewire: ohci: use guard macro to serialize
accesses to phy registers") refactored initiated_reset() helper function,
while the error path was changed wrongly.

This commit fixes the bug.

Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
Fixes: 404957c1e207 ("firewire: ohci: use guard macro to serialize accesses to phy registers")
Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/ohci.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index 53132eae37fe..a3a37955b174 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -1919,7 +1919,7 @@ static int get_self_id_pos(struct fw_ohci *ohci, u32 self_id,
 	return i;
 }
 
-static bool initiated_reset(struct fw_ohci *ohci)
+static int detect_initiated_reset(struct fw_ohci *ohci, bool *is_initiated_reset)
 {
 	int reg;
 
@@ -1946,7 +1946,9 @@ static bool initiated_reset(struct fw_ohci *ohci)
 		return reg;
 
 	// bit 3 indicates "initiated reset"
-	return !!((reg & 0x08) == 0x08);
+	*is_initiated_reset = !!((reg & 0x08) == 0x08);
+
+	return 0;
 }
 
 /*
@@ -1956,7 +1958,8 @@ static bool initiated_reset(struct fw_ohci *ohci)
  */
 static int find_and_insert_self_id(struct fw_ohci *ohci, int self_id_count)
 {
-	int reg, i, pos;
+	int reg, i, pos, err;
+	bool is_initiated_reset;
 	u32 self_id = 0;
 
 	// link active 1, speed 3, bridge 0, contender 1, more packets 0.
@@ -1985,7 +1988,6 @@ static int find_and_insert_self_id(struct fw_ohci *ohci, int self_id_count)
 
 	for (i = 0; i < 3; i++) {
 		enum phy_packet_self_id_port_status status;
-		int err;
 
 		err = get_status_for_port(ohci, i, &status);
 		if (err < 0)
@@ -1994,7 +1996,10 @@ static int find_and_insert_self_id(struct fw_ohci *ohci, int self_id_count)
 		self_id_sequence_set_port_status(&self_id, 1, i, status);
 	}
 
-	phy_packet_self_id_zero_set_initiated_reset(&self_id, initiated_reset(ohci));
+	err = detect_initiated_reset(ohci, &is_initiated_reset);
+	if (err < 0)
+		return err;
+	phy_packet_self_id_zero_set_initiated_reset(&self_id, is_initiated_reset);
 
 	pos = get_self_id_pos(ohci, self_id, self_id_count);
 	if (pos >= 0) {
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
