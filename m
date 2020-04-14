Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E6D691A85AD
	for <lists+linux1394-devel@lfdr.de>; Tue, 14 Apr 2020 18:49:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1jOOkU-0000zW-DD; Tue, 14 Apr 2020 16:49:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <mchehab@kernel.org>) id 1jOOkS-0000zN-EQ
 for linux1394-devel@lists.sourceforge.net; Tue, 14 Apr 2020 16:49:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ed3bTopFKVZzbt80hF5JuA4jn8hFA8UMuwBjxOPb4mE=; b=AzmBAn5VHYL5a/foDng4hIgQwb
 5b7mJf7FERkJw1dUzvwG6zmcQxxE/FugqkurOBmz6gUptrLPmi1iOBLIL3D4R9Ro2wkD0OgnqZKiR
 pScXy8Xmu6pR8RgKk7fo9oIuPTwOS7baU9J5ymB6VAy12x5kek5inUiscCUusk3KpCz8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ed3bTopFKVZzbt80hF5JuA4jn8hFA8UMuwBjxOPb4mE=; b=EOCTCFR4wfd/65QjKyCzgVZnby
 O5g2YeP6s0Rkt66EPxFT7JOxYa9WeOCQnzsXg1xDVqIVePCgBNA76kozrgykspTSGmftDguLdO4Hx
 zgJ/gUdI3URAAZ4TzL2Zgy6zP/JXn++K+hV+uKMuDHZXLXXtZUJTypzvs7LgaZBh9QI8=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jOOkN-000xkJ-VP
 for linux1394-devel@lists.sourceforge.net; Tue, 14 Apr 2020 16:49:20 +0000
Received: from mail.kernel.org (ip5f5ad4d8.dynamic.kabel-deutschland.de
 [95.90.212.216])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3CAA7221ED;
 Tue, 14 Apr 2020 16:49:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586882943;
 bh=kEy4QClsDKqYpuy6jSsVkkfgbzM9x8NxA08DUYZUD4M=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=J0x85DR/GN5i6ltb3aDBHGUVJS/R58au7KZ/t3BGbddVS/LY0PWBI3wX9RBFvNO9+
 TispshdXtRWp9yKm94/VAFBm/equLxIz7D5hF38cvMGadD8O2aeeo6sreuUJ8WhvGg
 b3DnD/bENQOMZbnuTcv3jHXVdUt+6a2cIOmqKYXE=
Received: from mchehab by mail.kernel.org with local (Exim 4.92.3)
 (envelope-from <mchehab@kernel.org>)
 id 1jOOk9-0068nI-Gp; Tue, 14 Apr 2020 18:49:01 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Doc Mailing List <linux-doc@vger.kernel.org>
Subject: [PATCH v2 30/33] firewire: firewire-cdev.hL get rid of a docs warning
Date: Tue, 14 Apr 2020 18:48:56 +0200
Message-Id: <9b2501a41eba27ccdd4603cac2353c0efba7a90a.1586881715.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.25.2
In-Reply-To: <cover.1586881715.git.mchehab+huawei@kernel.org>
References: <cover.1586881715.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: in-berlin.de]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1jOOkN-000xkJ-VP
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
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Jonathan Corbet <corbet@lwn.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

This warning:

	./include/uapi/linux/firewire-cdev.h:312: WARNING: Inline literal start-string without end-string.

is because %FOO doesn't work if there's a parenthesis at the
string (as a parenthesis may indicate a function). So, mark
the literal block using the alternate ``FOO`` syntax.

Acked-by: Stefan Richter <stefanr@s5r6.in-berlin.de>
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 include/uapi/linux/firewire-cdev.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/uapi/linux/firewire-cdev.h b/include/uapi/linux/firewire-cdev.h
index 1acd2b179aef..7e5b5c10a49c 100644
--- a/include/uapi/linux/firewire-cdev.h
+++ b/include/uapi/linux/firewire-cdev.h
@@ -308,7 +308,7 @@ struct fw_cdev_event_iso_interrupt_mc {
 /**
  * struct fw_cdev_event_iso_resource - Iso resources were allocated or freed
  * @closure:	See &fw_cdev_event_common;
- *		set by %FW_CDEV_IOC_(DE)ALLOCATE_ISO_RESOURCE(_ONCE) ioctl
+ *		set by``FW_CDEV_IOC_(DE)ALLOCATE_ISO_RESOURCE(_ONCE)`` ioctl
  * @type:	%FW_CDEV_EVENT_ISO_RESOURCE_ALLOCATED or
  *		%FW_CDEV_EVENT_ISO_RESOURCE_DEALLOCATED
  * @handle:	Reference by which an allocated resource can be deallocated
-- 
2.25.2



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
