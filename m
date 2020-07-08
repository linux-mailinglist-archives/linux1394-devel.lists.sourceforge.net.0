Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C005C21867D
	for <lists+linux1394-devel@lfdr.de>; Wed,  8 Jul 2020 13:56:27 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1jt8gU-0005Kj-Al; Wed, 08 Jul 2020 11:56:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <grandmaster@al2klimov.de>) id 1jt8gT-0005KU-0q
 for linux1394-devel@lists.sourceforge.net; Wed, 08 Jul 2020 11:56:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bEWGFN+pq9iAsXs8VbZJbsYhkV96QPbzOFAWPQ4IdHI=; b=M7jBo4yMV+1NOkjgmn+UF6H/29
 Wf/gdglba+BCd5g2HewijGA3m6b4rB90uV6ngpQmwW9SSHuOICx178F++umjf0ZX1jwUp/ZGP/hLE
 9OhJmMNXD3NaMZu2rrTIBtgkmvOzqTe6jJBv+GS+boXv3Tc4jmHtsHp1TF2AGHnAyvuw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=bEWGFN+pq9iAsXs8VbZJbsYhkV96QPbzOFAWPQ4IdHI=; b=I
 5Joe9Ao/wy4Kjv3KlOLPUqvsy+ExW+yNuAaRd9t0Vpg+crdhc1dXrAuwwjAkv0YpsoPyLRnpm18lC
 kJsoXYZy7RJBHI3elfbyOmwHQO34V1pS8zqapTA1Syj4wYBnQhTOqwyKfrdoMGKOIYfAm2pWSWr5E
 ROiXWjNLxPP6Ypes=;
Received: from smtp.al2klimov.de ([78.46.175.9])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jt8gL-00E7nR-G1
 for linux1394-devel@lists.sourceforge.net; Wed, 08 Jul 2020 11:56:16 +0000
Received: from authenticated-user (PRIMARY_HOSTNAME [PUBLIC_IP])
 by smtp.al2klimov.de (Postfix) with ESMTPA id 5396EBC107;
 Wed,  8 Jul 2020 11:56:02 +0000 (UTC)
From: "Alexander A. Klimov" <grandmaster@al2klimov.de>
To: stefanr@s5r6.in-berlin.de, linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Subject: [PATCH] Replace HTTP links with HTTPS ones: FIREWIRE SUBSYSTEM
Date: Wed,  8 Jul 2020 13:55:55 +0200
Message-Id: <20200708115555.14210-1-grandmaster@al2klimov.de>
MIME-Version: 1.0
X-Spamd-Bar: +++++
X-Spam-Level: *****
Authentication-Results: smtp.al2klimov.de;
 auth=pass smtp.auth=aklimov@al2klimov.de
 smtp.mailfrom=grandmaster@al2klimov.de
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: al2klimov.de]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jt8gL-00E7nR-G1
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
Cc: "Alexander A. Klimov" <grandmaster@al2klimov.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Rationale:
Reduces attack surface on kernel devs opening the links for MITM
as HTTPS traffic is much harder to manipulate.

Deterministic algorithm:
For each file:
  If not .svg:
    For each line:
      If doesn't contain `\bxmlns\b`:
        For each link, `\bhttp://[^# \t\r\n]*(?:\w|/)`:
	  If neither `\bgnu\.org/license`, nor `\bmozilla\.org/MPL\b`:
            If both the HTTP and HTTPS versions
            return 200 OK and serve the same content:
              Replace HTTP with HTTPS.

Signed-off-by: Alexander A. Klimov <grandmaster@al2klimov.de>
---
 Continuing my work started at 93431e0607e5.
 See also: git log --oneline '--author=Alexander A. Klimov <grandmaster@al2klimov.de>' v5.7..master
 (Actually letting a shell for loop submit all this stuff for me.)

 If there are any URLs to be removed completely or at least not HTTPSified:
 Just clearly say so and I'll *undo my change*.
 See also: https://lkml.org/lkml/2020/6/27/64

 If there are any valid, but yet not changed URLs:
 See: https://lkml.org/lkml/2020/6/26/837

 If you apply the patch, please let me know.


 drivers/firewire/ohci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index 54fdc39cd0bc..12703fbb99de 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -1827,7 +1827,7 @@ static int initiated_reset(struct fw_ohci *ohci)
 
 /*
  * TI TSB82AA2B and TSB12LV26 do not receive the selfID of a locally
- * attached TSB41BA3D phy; see http://www.ti.com/litv/pdf/sllz059.
+ * attached TSB41BA3D phy; see https://www.ti.com/litv/pdf/sllz059.
  * Construct the selfID from phy register contents.
  */
 static int find_and_insert_self_id(struct fw_ohci *ohci, int self_id_count)
-- 
2.27.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
