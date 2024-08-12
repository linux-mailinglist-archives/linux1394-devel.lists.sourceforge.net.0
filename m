Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 917BC94FA6F
	for <lists+linux1394-devel@lfdr.de>; Tue, 13 Aug 2024 01:52:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sdepw-0004pR-QM;
	Mon, 12 Aug 2024 23:52:28 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sdepu-0004pH-Mo
 for linux1394-devel@lists.sourceforge.net;
 Mon, 12 Aug 2024 23:52:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hYAgmHW3sPNyEffqeWqwPUE6kfVNpSaXPU2TRDZTgeo=; b=QQgW4F3DHbOttQebKssf+PihhI
 AyFWntaFAFUkh35Nr5mFcu36Wpr85f/LxoFOT+DVFoIC91/DDe9vpEjIz2y/QLA78OSFjmiYH4RE0
 1HiqvQ5fXrabEXHYEkBi1BZdc/L9nXrea+ms5P+qXuF1iJ2S9p+J8rDivOu5J23LObuA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hYAgmHW3sPNyEffqeWqwPUE6kfVNpSaXPU2TRDZTgeo=; b=BFNYBIvujkO0btW/CyKV7jgsqE
 +FAov6hx/7rw7xXCGsKQ0QJTyw2VmjawAGXgtZpy6dvvZEPKfA4unPEvLub/RuT4nkNuYmcvyr2Ab
 V9HZBiInztSd3SYQmv3FBHCuRRdWw5Sn4yRic/IiPQi6D3ReQES2jOzhuXe3agvo3p3I=;
Received: from fout5-smtp.messagingengine.com ([103.168.172.148])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sdept-0002Dh-Cc for linux1394-devel@lists.sourceforge.net;
 Mon, 12 Aug 2024 23:52:26 +0000
Received: from phl-compute-03.internal (phl-compute-03.nyi.internal
 [10.202.2.43])
 by mailfout.nyi.internal (Postfix) with ESMTP id B0DC9138CCDE;
 Mon, 12 Aug 2024 19:52:14 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by phl-compute-03.internal (MEProxy); Mon, 12 Aug 2024 19:52:14 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1723506734; x=
 1723593134; bh=hYAgmHW3sPNyEffqeWqwPUE6kfVNpSaXPU2TRDZTgeo=; b=2
 lRfy2fo6ZI9gH/XB+QRhqZeuApk/XSjQLH0YGD1S47JXPWnjH3gPLYB9/4f8DCWs
 IyV+3KLbsnNu1oa4oDoxdt47gBQgQoNZi7qialTNb009k7eqlSgIWKH5p2gPJFSG
 ebaMbL86MaB9vKn2hLIhiHPtlY+T/OEqM3ZxPxXgqS46PsLSd4Dk6Geh+JP2FLP1
 hHoajiGFWaR2QOMMtoz6oZ379SCTdjSem+j06OYRM5DR/bkb/QAbMi3MxM43r/bb
 K1crR7AWlS0KXzerdPc5O3UN3bIH/Z7pY1zxTkQwT0ButTaaaEdE3mUBf+6EdI1E
 Z0hu04UCm0mmENd/nwOkg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1723506734; x=
 1723593134; bh=hYAgmHW3sPNyEffqeWqwPUE6kfVNpSaXPU2TRDZTgeo=; b=B
 A5ismDIxYid2WnHTNdIifFtgiXpHKAbXXwhY+8BUBM7H6BuC732qE9dIPW96sTT0
 HdlLlWDpkON+Esc/SR/mgNSqeyweuueGX0zvfPB3UHWljABXglyJBUlGT4ZMaXZn
 Pox9pfkoFz6AGMkAY5Xj/TRlx9jgyVfAzCtE9EZLkYVUuynrDoaVS+rCIOZcWJwy
 2ZDXgSXHTnQXg7KJ8XJM5ni8yIG676rG0ZzUWca7ZzZvze4i6JJsv756+LVESoX5
 RcbSVcfGSDtag0T/mC1cW34VxwmFB2waHxUeJpdagSyO60Vo1rrz7Ujd7lPr7yrI
 kr5YWVYM920k6TpPEUesA==
X-ME-Sender: <xms:LqC6Zv87FejEbnDfJnKqZI-RzKCTSDh8gbZuJk5uvI1usyJbsJpdHw>
 <xme:LqC6ZrvB-50HSTPjjieB6rn6Gi0srgnuAy82XpYmNSuk6zUTIWVMa8kAu3yP1W0DJ
 a4ppbyjuGl_YNFLGHg>
X-ME-Received: <xmr:LqC6ZtDWAy6vgOQBQs2HfZGiLHzYJxrK0f7C2xkDjPyPsPow6cuDSZIRKCfjYoY9aRfNxchyCdATw3yURFnwZZfja4gsfB_d8Dm0a157sbpBjA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddruddtuddgvdejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevuf
 ffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghm
 ohhtohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrg
 htthgvrhhnpedvjefgjeeuvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdff
 kedvtdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
 hoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopedv
 pdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvg
 hlsehlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhu
 gidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:LqC6ZrfCRLcH--WW-nmMgDcAhZSd2fNxOFCBP8CHmFHt-tJyTWay3w>
 <xmx:LqC6ZkMWLz7BmPHoBOK6O1lAK0RyW1qy4eAlXZEWBw7ZBuJFirxNYw>
 <xmx:LqC6ZtlIt-hm9ZUoKX1nz9as9cCKupwGEQp_JHqZT_oQK5SC0eEehw>
 <xmx:LqC6ZuuLJor9dc84KUiM2G4Ozpn5-g1aWFDSVRWFO3qS4gQP4muesA>
 <xmx:LqC6ZtaIX9Tca7u8VXCU5YvMT4OB-vGE6KuvXenpUGGKhrObn4mA0lNn>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 12 Aug 2024 19:52:13 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 1/5] firewire: core: minor code refactoring to release client
 resource
Date: Tue, 13 Aug 2024 08:52:06 +0900
Message-ID: <20240812235210.28458-2-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240812235210.28458-1-o-takashi@sakamocchi.jp>
References: <20240812235210.28458-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Current implementation checks and validates the result to
 find resource entry two times. It is redundant. This commit refactors the
 redundancy. Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp> ---
 drivers/firewire/core-cdev.c | 15 +++++++-------- 1 file changed,
 7 insertions(+), 8 deletions(-) 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [103.168.172.148 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sdept-0002Dh-Cc
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

Current implementation checks and validates the result to find resource
entry two times. It is redundant.

This commit refactors the redundancy.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-cdev.c | 15 +++++++--------
 1 file changed, 7 insertions(+), 8 deletions(-)

diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
index c211bb19c94e..81fdb2be9063 100644
--- a/drivers/firewire/core-cdev.c
+++ b/drivers/firewire/core-cdev.c
@@ -512,15 +512,14 @@ static int release_client_resource(struct client *client, u32 handle,
 
 	scoped_guard(spinlock_irq, &client->lock) {
 		if (client->in_shutdown)
-			resource = NULL;
-		else
-			resource = idr_find(&client->resource_idr, handle);
-		if (resource && resource->release == release)
-			idr_remove(&client->resource_idr, handle);
-	}
+			return -EINVAL;
 
-	if (!(resource && resource->release == release))
-		return -EINVAL;
+		resource = idr_find(&client->resource_idr, handle);
+		if (!resource || resource->release != release)
+			return -EINVAL;
+
+		idr_remove(&client->resource_idr, handle);
+	}
 
 	if (return_resource)
 		*return_resource = resource;
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
