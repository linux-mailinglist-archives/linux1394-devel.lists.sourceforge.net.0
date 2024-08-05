Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ADDE947799
	for <lists+linux1394-devel@lfdr.de>; Mon,  5 Aug 2024 10:54:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1satU8-0007gy-JC;
	Mon, 05 Aug 2024 08:54:33 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1satTu-0007cC-Tj
 for linux1394-devel@lists.sourceforge.net;
 Mon, 05 Aug 2024 08:54:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=96B7qG2RXUCqvEU76ArBM5B2OlW27Ke00tHiDtOnSak=; b=Y1jKlMsneiOB0NI9p49mJKMJVa
 vgwqtZENeli1QjVLHqKhZkEFHQltxWSWNc3d/7fbOs4c+vkDOTO6yeCja1z5CFeC5XzJeLe2MGc4g
 SSdNNEzNzGWwVaV1eSsevUqryACysln8RB9vpFy7V+DmJfDbS0hXi6M8diQMqLhdZ9Wg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=96B7qG2RXUCqvEU76ArBM5B2OlW27Ke00tHiDtOnSak=; b=exXcIE3lArHHg65udAr1SYQtem
 r1Xqj39jCK8YYIDjl5pQ1qk62dkYcuf41cmgF2A7Ewb5S807jJ5myeeI8Fc2D0fUq1YWOrwJvDkRV
 J2UDImcCSIgANT2B8uP+4oJAYtroADa3cokG8nelutNA7DvPzAgqaLtHnYsY+SvkXKb4=;
Received: from fhigh4-smtp.messagingengine.com ([103.168.172.155])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1satTu-0002oD-Tl for linux1394-devel@lists.sourceforge.net;
 Mon, 05 Aug 2024 08:54:19 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id 502F31151C9B;
 Mon,  5 Aug 2024 04:54:13 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Mon, 05 Aug 2024 04:54:13 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1722848053; x=
 1722934453; bh=96B7qG2RXUCqvEU76ArBM5B2OlW27Ke00tHiDtOnSak=; b=X
 w7nI+oseErLaEdC9C5UVw1plc2OMYvt8gD2mtUUdGw3z/zw6jbYYcGa8Hw2EFipd
 fh/eYqbEdZ9NJWZql5GZQ10mroMgNquxChFOGrJfEW8BC5Ejm5+eYzj3ajcajxj0
 33uhXTgEP8ETqFrYDD8qtIz1R21J4eFPe9WyzYlaNPWlHt8lNE7FyURKliGChIeE
 SYc2QLx5JEvgPoetdHi4rqsVxETUHXdMUMKbz8vREedaj9FSXc/f4zT/hnRAIhU4
 MXAKOMV/K21fcUYzOFO/rT/qx00hAyDshfbMbXTKLzt8KQ0rRHsMb8+8pZTkHqIy
 Hq/nxEmpqXznXprR5jAKQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1722848053; x=
 1722934453; bh=96B7qG2RXUCqvEU76ArBM5B2OlW27Ke00tHiDtOnSak=; b=R
 vmDsTtEp62s22RsWxZ5jSNfUEf/uutbAtTgXeOG1g3ypoXUFW4OBZo3hZ/yDEHh/
 5HzjcTfdr++j87U3Aw7fDm2DJ9l3MDoiOcvrA9O6KC3kMZSbqGiWTiC3Fvrv3FcA
 A7L10NzQUrVBLujWzki+SSQ3OrcErMxwgXvUvArevRPCD8Kh2JvlXyeBZfcohq9E
 2XZH8C28XbuBZfmtpSsGyZ5gyzHrkmN5TMQNw7Pdm4UUGERcFMB0i++DbZHQgvK0
 mz49FREaOh/xJOPDa8mvvA2pvuxSKJa4F5bSeKVJgDiYFl7VS+y9bc8eeOurzJKY
 Z9tqhwdAsJ2SumziwObAw==
X-ME-Sender: <xms:NZOwZrsEgQCUW_JhRyKb46YQ2PisGMtudj8SiME-58TyrV1Wi_PZdA>
 <xme:NZOwZschie_x7bp0DLZOrmr0tG6dAzu-pE8E4gFoPElxXa3P2-C2OJQLgbKjL3QUS
 6sZsxJ0wOUm-UednqA>
X-ME-Received: <xmr:NZOwZuyDkN7iZJY4UpS7QfkqndxXdO9-ibVQuXeOfsRRsZyq0ursh4K2JloeN9rzSpN3k48gl-h5QgOOC0clGzW6QPOIwtsTlJHHP3XeRDU>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrkeeigddutdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepvdejgfejue
 dvgfduudekleevtefgtdevhfdtffefiefgveeuteffiedvffekvddtnecuvehluhhsthgv
 rhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihessh
 grkhgrmhhotggthhhirdhjphdpnhgspghrtghpthhtoheptd
X-ME-Proxy: <xmx:NZOwZqOfgSRopmfTlYJzjpy6zMpuHSOnjw7CaL5cccukYZBung2Qag>
 <xmx:NZOwZr8uJcFiPM-lJMgdeO8zFtcd3HJg1KozFxyRoQcm8LGikv9NOQ>
 <xmx:NZOwZqUdz99pXNLsWv5WxiW8p0XBUDh6P0VwmAQWVq9Y4PgI65uCnA>
 <xmx:NZOwZsduizwb3N8AlF6N6qdecVAX2bswqI4wGFMTA1OB_Nzeh43ZWg>
 <xmx:NZOwZtK0OR0aq3IG3I-wF5cdf1Bwn9YahBorIAFoHspQTzRmd6Ghh3zU>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 5 Aug 2024 04:54:12 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH v2 01/17] firewire: core: use guard macro to maintain static
 packet data for phy configuration
Date: Mon,  5 Aug 2024 17:53:52 +0900
Message-ID: <20240805085408.251763-2-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240805085408.251763-1-o-takashi@sakamocchi.jp>
References: <20240805085408.251763-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The core function provide a kernel API to send phy
 configuration
 packet. Current implementation of the feature uses packet object allocated
 statically. The concurrent access to the object is protected [...] 
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
 [103.168.172.155 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.155 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1satTu-0002oD-Tl
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

The core function provide a kernel API to send phy configuration packet.
Current implementation of the feature uses packet object allocated
statically. The concurrent access to the object is protected by static
mutex.

This commit uses guard macro to maintain the mutex.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-transaction.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/firewire/core-transaction.c b/drivers/firewire/core-transaction.c
index a89c841a7dbe..2a2cbd6e2f9b 100644
--- a/drivers/firewire/core-transaction.c
+++ b/drivers/firewire/core-transaction.c
@@ -494,7 +494,7 @@ void fw_send_phy_config(struct fw_card *card,
 	phy_packet_phy_config_set_gap_count(&data, gap_count);
 	phy_packet_phy_config_set_gap_count_optimization(&data, true);
 
-	mutex_lock(&phy_config_mutex);
+	guard(mutex)(&phy_config_mutex);
 
 	async_header_set_tcode(phy_config_packet.header, TCODE_LINK_INTERNAL);
 	phy_config_packet.header[1] = data;
@@ -508,8 +508,6 @@ void fw_send_phy_config(struct fw_card *card,
 
 	card->driver->send_request(card, &phy_config_packet);
 	wait_for_completion_timeout(&phy_config_done, timeout);
-
-	mutex_unlock(&phy_config_mutex);
 }
 
 static struct fw_address_handler *lookup_overlapping_address_handler(
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
