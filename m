Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A80148493AC
	for <lists+linux1394-devel@lfdr.de>; Mon,  5 Feb 2024 07:05:16 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rWs6I-0008E4-4D;
	Mon, 05 Feb 2024 06:05:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rWs6G-0008DM-0i
 for linux1394-devel@lists.sourceforge.net;
 Mon, 05 Feb 2024 06:05:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=L96t1AozAoYK/Cnj9rCJdZC5N9mB5YiS8vFpPwYqvVk=; b=T3t89/+GsAYuimU79WhLmeAEDQ
 F8TGMHblnLIivJyG8DIUSvxvKwbevIJfei6SoDAkq58QyQnPqkJ+hjtb7fekDLyizc90BEVr+5too
 NHwzbhrWcfgNq4rEcVITzZ9sN5LPqeyeqXo2HUh/rAOddjvckqNFq8s2YYt1dgwTfmnI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=L96t1AozAoYK/Cnj9rCJdZC5N9mB5YiS8vFpPwYqvVk=; b=E
 0eRfevaUORpt34ZpQoNHqgoYrCrUUNDiDVPktdXKVpGeJE/Ky3U18QmQiZsDU0hHkcGC8FBCkoUec
 fxsRyVeNZNQPcUHVi4D1UrGGzduvxlfhl6WbAoarss5INK538c2/RlUngFZ2fxOmflZKuRjeUGTU0
 UhN0r7Y9SLGBTmDc=;
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rWs6E-0001Wk-RB for linux1394-devel@lists.sourceforge.net;
 Mon, 05 Feb 2024 06:05:00 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailout.nyi.internal (Postfix) with ESMTP id B954B5C00F7;
 Mon,  5 Feb 2024 01:04:53 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute1.internal (MEProxy); Mon, 05 Feb 2024 01:04:53 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm3; t=1707113093; x=1707199493; bh=L96t1AozAo
 YK/Cnj9rCJdZC5N9mB5YiS8vFpPwYqvVk=; b=Wh9uleSdER1WIq612o/QY7/9Y+
 nKgd7R+/Nwwkln6Z0fmDCdBwjfa6ZwZTWo+yIPc5xgS8RJ03LI8H0Ua9Im5D/i5o
 +rxvchr9wGxPt8EMKz0IVHigC/ARgDaNHyBWIZEHMZ2z3ZL489OjaKDMABXUX+mJ
 YNcsAM8k/7bwSC+LxdWC79fhohOleUxEunV36gpzTVlp/+v4mcyU4XBBspq7iDKz
 mzzoiT5qnSIO+6W07v6yHjBrcXiL4vzr6uaXGkcyD1H86HqCzLCdobtfgeH2kP8+
 0K0IzphW/4CZbTyjLCqTIbG6UY9lpD4dc9LAnTj13DNN9ecq+47VheEMW9eA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1707113093; x=1707199493; bh=L96t1AozAoYK/Cnj9rCJdZC5N9mB
 5YiS8vFpPwYqvVk=; b=j+aIWJi4T0LLCBeSzZaNjxHR5JfcsGUjEbNEqRy2YZDE
 mKfnGe7KPJGdMpnHOMg2AFbRnBMlp4+fxoYpVpw6VEZt7VnBMk2zYFSkbx0tgHoC
 WaJV6Ysut9+ESKjOyEW3gCJpEXaND0lPhjopUULjfv/PHAemw+8NZTeXP0uGawp2
 frvFO7IkgrM0fdnnN7rnlawGXLw0ObZbexTSjeaC7ltSZJKdb9RkQU0vpcunbPn9
 eQ1BF+eHYZZwYK6NxfbjgFY4qmHhRNK1ezRTxmitu7//uNkfhOCLN5ELGkq9T/js
 FMm5nDw2jr/DzvlIgUIihS2eREEBEt+cDN8zTy8vgA==
X-ME-Sender: <xms:hHrAZXZtVmrAv8YI8iiQLQTBp0qhBYnnKGpMrry5d6VYuEclTv6uOg>
 <xme:hHrAZWa74nHA-WDYvl54U8pbGjeKpZibpK-bZBi2Ltz-4ibTnoniyD4o71oIT60O9
 q3Yu-e-vNHHeB3DYlA>
X-ME-Received: <xmr:hHrAZZ_GT1-IvXfayq86jgrJaodt9izmPlGczJru6L68w2lEMxot6WeqeyqAmPl4UrySf3HooCG8YbusgNre_LzRI9Vd_E8OsIWrBtQjtNmr0Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrfeduledgleduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffoggfgsedtkeertd
 ertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeeggfehleehje
 eileehveefkefhtdeffedtfeeghfekffetudevjeegkeevhfdvueenucffohhmrghinhep
 khgvrhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrg
 hilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:hXrAZdrX4YIie-QgL1m1sOgo27a2m5_k4CBMV4N0ict1aqkAOSjpJw>
 <xmx:hXrAZSqIUufHrNxx1OjEFG20B5HoyDllvRxwHAtiF37R1RO1-3jpkA>
 <xmx:hXrAZTRSGBjvFCKos3Ia8CHSqRjla0E1GpCzx0pE9im1Cjx5C9KkIA>
 <xmx:hXrAZZ2wEpXL7dnEDYjUl35-tSkZRwWPeFQQLPbIoYKJJlYT5mtdyg>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 5 Feb 2024 01:04:51 -0500 (EST)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net,
	linux-kernel@vger.kernel.org
Subject: [PATCH] firewire: core: fix build failure due to the caller of
 fw_csr_string()
Date: Mon,  5 Feb 2024 15:04:48 +0900
Message-Id: <20240205060448.13881-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  A commit 47dc55181dcb ("firewire: core: search descriptor
 leaf just after vendor directory entry in root directory") for v6.8-rc3 and
 a commit 67a5a58c0443 ("firewire: Kill unnecessary buf check in de [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.26 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1rWs6E-0001Wk-RB
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, kernel test robot <lkp@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

A commit 47dc55181dcb ("firewire: core: search descriptor leaf just after
vendor directory entry in root directory") for v6.8-rc3 and a commit
67a5a58c0443 ("firewire: Kill unnecessary buf check in
device_attribute.show") for v6.9 bring build failure in for-next tree due
to the change of the name of local variable.

This commit fixes it.

Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
Closes: https://lore.kernel.org/lkml/20240202111602.6f6e2c1a@canb.auug.org.au/
Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202402022343.NkgsMITA-lkp@intel.com/
Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-device.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/firewire/core-device.c b/drivers/firewire/core-device.c
index a802c6d4f4fd..c0976f6268d3 100644
--- a/drivers/firewire/core-device.c
+++ b/drivers/firewire/core-device.c
@@ -366,7 +366,7 @@ static ssize_t show_text_leaf(struct device *dev,
 			// in the root directory follows to the directory entry for vendor ID
 			// instead of the immediate value for vendor ID.
 			result = fw_csr_string(directories[i], CSR_DIRECTORY | attr->key, buf,
-					       bufsize);
+					       PAGE_SIZE - 1);
 			if (result >= 0)
 				ret = result;
 		}
-- 
2.40.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
