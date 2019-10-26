Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B04EE593A
	for <lists+linux1394-devel@lfdr.de>; Sat, 26 Oct 2019 10:21:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1iOHJm-0006Q7-Ja; Sat, 26 Oct 2019 08:21:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <cyrozap@gmail.com>) id 1iOHJj-0006OK-LS
 for linux1394-devel@lists.sourceforge.net; Sat, 26 Oct 2019 08:20:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5MND/wM7hOVHb3mgWMKvjf3ZSacMyh4OdI7kBHU5KDI=; b=jRryguUAM8cOfSpuU1qZEcElXq
 g4vRY5WZ7u2tKdjQLBaMIyMyE3XS2mdTYjBYXSeVfumKfWKwvwCIapwy3oN/Lm7R3tGqMmRLHc/Vt
 0IRAoGjpTRht8W2MyO586/zN2H8qAGhFLnQ5fhLjPJz5EaCxBGHczozmqA1bMAnS4b8w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=5MND/wM7hOVHb3mgWMKvjf3ZSacMyh4OdI7kBHU5KDI=; b=b
 xb/e7qAeLNBXM1TQiTWjTOwYP7v5B8JultdjZl4MXRyEAfPWrlFYnHlkW1eRYdX2rRSBQ3BDBEr7F
 mL/A2Y9+lVjpKLN0EiD17Stpta7PwkLf2T4zVTB5bJiPlBGM1s+rBcOTZJ3W/of/Olf8bm/Y8beqI
 Uoh4xu/9cmZT0c1s=;
Received: from mail-qk1-f196.google.com ([209.85.222.196])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iOHJh-003v6e-QK
 for linux1394-devel@lists.sourceforge.net; Sat, 26 Oct 2019 08:20:59 +0000
Received: by mail-qk1-f196.google.com with SMTP id w2so4023353qkf.2
 for <linux1394-devel@lists.sourceforge.net>;
 Sat, 26 Oct 2019 01:20:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5MND/wM7hOVHb3mgWMKvjf3ZSacMyh4OdI7kBHU5KDI=;
 b=FTCH3VD/So4lSW0Dfxql3ohEeCo666iVE/+awWbUfD3t1Gffy634fVX5JGwQwKQYMU
 tPIwwVE4pI7BJh5hvgakCPqeiyC6nvFhP773j46UobtUTXDKv8Nu1VFjTYHbfhuAeH9t
 Ykd+yZNboKF6MY9xEHjANSirX0Ic3fmsK9l+h1ph7KFhC7KCNnB15j7kEHmN0Fw2BQX4
 ZHqWszo7fU+MFJQH9/1bZVGBjQrl73eiTddccHSSGzF5FEnN7b9FZrZtIX3D8nzI8cSv
 /fgC+0RyvUlTRpTpx2sCZZiRTzRqGr9kwP8ncXQ/xCt+5qWebeHLw2rUhRRAn8Qu64Kq
 2wiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5MND/wM7hOVHb3mgWMKvjf3ZSacMyh4OdI7kBHU5KDI=;
 b=GV2AH6IvWk01PZsIP36MDsRcGLfhMDXC7FAo3/EFLIBZZAsvN7gxSG+i2acHNADURx
 H0kW9CwMGQAtF5kA7xu5CAIX+1p1AKaRNa9xLGFqhKX1NNfZ4R2nBFp5zy97mQfucg+r
 vpxuZkFJoRZNvqBrjKTYHyrOlzSg+gNIQKfGIbbjrUBaSlC4Fr9W3Qp456xcm4i97uO0
 sW5nWjklyowYM+002vjGS3ZtAFHpsQ/WtRfIPeeI0tLvfEVaUPWm0HbaIKOBGNRJTsUV
 OulOsnMh4TqpHOva50nvW94VMsLaqL9wdzIZrTUKl5VYNjoFApCXPcmaAzi7CVzLUIED
 dSlA==
X-Gm-Message-State: APjAAAVgQZMH1GtjEV+4/M8sovrfDHQk92wLPQU9zP+s1Jp6Qn8jJExX
 jlP2JnkU0KxwhJ8n+jYvzilXtvWejTg=
X-Google-Smtp-Source: APXvYqxGwYd4DMrOqOVxfm0KB9Ze7ujmB1TWLViFU3Nr7WqJu7BG13lJiVKdXiYKdRYHu6m4+b9dLw==
X-Received: by 2002:a05:620a:693:: with SMTP id
 f19mr6618684qkh.386.1572078051501; 
 Sat, 26 Oct 2019 01:20:51 -0700 (PDT)
Received: from localhost.localdomain ([194.59.251.149])
 by smtp.gmail.com with ESMTPSA id k13sm2307130qki.40.2019.10.26.01.20.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 26 Oct 2019 01:20:46 -0700 (PDT)
From: Forest Crossman <cyrozap@gmail.com>
To: linux1394-devel@lists.sourceforge.net,
	stefanr@s5r6.in-berlin.de
Subject: [PATCH] firewire: ohci: Fix misc. spelling/whitespace issues
Date: Sat, 26 Oct 2019 03:20:28 -0500
Message-Id: <20191026082029.10358-1-cyrozap@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (cyrozap[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.222.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.196 listed in wl.mailspike.net]
X-Headers-End: 1iOHJh-003v6e-QK
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

These are just some inconsequential spelling and whitespace issues I
found while studying the driver.

Signed-off-by: Forest Crossman <cyrozap@gmail.com>
---
 drivers/firewire/ohci.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index 522f3addb5bd..50d49dc09d69 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -448,7 +448,7 @@ static const char *evts[] = {
 	[0x0c] = "-reserved-",		[0x0d] = "-reserved-",
 	[0x0e] = "evt_unknown",		[0x0f] = "evt_flushed",
 	[0x10] = "-reserved-",		[0x11] = "ack_complete",
-	[0x12] = "ack_pending ",	[0x13] = "-reserved-",
+	[0x12] = "ack_pending",		[0x13] = "-reserved-",
 	[0x14] = "ack_busy_X",		[0x15] = "ack_busy_A",
 	[0x16] = "ack_busy_B",		[0x17] = "-reserved-",
 	[0x18] = "-reserved-",		[0x19] = "-reserved-",
@@ -1281,7 +1281,7 @@ struct driver_data {
 };
 
 /*
- * This function apppends a packet to the DMA queue for transmission.
+ * This function appends a packet to the DMA queue for transmission.
  * Must always be called with the ochi->lock held to ensure proper
  * generation handling and locking around packet queue manipulation.
  */
-- 
2.20.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
