Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A8CE1302C1
	for <lists+linux1394-devel@lfdr.de>; Sat,  4 Jan 2020 15:43:17 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1inkdw-0002Sx-8H; Sat, 04 Jan 2020 14:43:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <madhuparnabhowmik04@gmail.com>) id 1inkdu-0002Sp-4x
 for linux1394-devel@lists.sourceforge.net; Sat, 04 Jan 2020 14:43:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2M7YOorv6RwrWVHgY3ejHrhkHuQ38MnpPJ/NxaJYkHo=; b=a+kD3DFGQhaSUBFVEqq+HP7l2t
 sZGUCLPB1UqKwxINjIzZo7C3BJbHD7mB/RPg9D894iP+SicgYA/PSLIF0JsTXXXxOr+13soiIWUxr
 QNmLsZ++P/kDxEwoSMQA+j3lHSH+OaZHXReh41aP0tEycW/wICSYkWLXer+1WS2HPhoE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2M7YOorv6RwrWVHgY3ejHrhkHuQ38MnpPJ/NxaJYkHo=; b=GXD1or3mlxl4ZnuwIpc3TQ2NfU
 LDbs0hrWzHd7MGZdrpdMQdhpa8BEuHmXORp6fV8YcZIfV6SuIcnw8MbqhEK89yHA4yISdFwVhakJv
 BoP1BqNTmG9lyk1Wpd1e/kdDuPjNSkrKEU7bx2f8towDIxo9P8ho4JILwhejRpGYFXRQ=;
Received: from mail-pf1-f194.google.com ([209.85.210.194])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1inkdq-0094Ou-K4
 for linux1394-devel@lists.sourceforge.net; Sat, 04 Jan 2020 14:43:06 +0000
Received: by mail-pf1-f194.google.com with SMTP id q10so24838508pfs.6
 for <linux1394-devel@lists.sourceforge.net>;
 Sat, 04 Jan 2020 06:43:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=2M7YOorv6RwrWVHgY3ejHrhkHuQ38MnpPJ/NxaJYkHo=;
 b=uKme5RRtW2QUsgxM60TcBzlZn3rSeNUUMtdWjlLJS7l03mysWXT9kH5aZvpctX4p8v
 rI6qIfsl+QwV2AC1DvRKx8VQrWeYJUEBTdiU/cU9p96UWpShC0EVFsQL1EiAha1dTJ8k
 XzyMHa/VORUWnW2dMhR4UAYjQ3fx6tVPu+ALVf2SaBnKMksxZi34jrE5Z/PNhFrCD0X4
 gRC8YLFa7MpuPxXOU1elcdcdE0XWbQ1Rd1xWhKIrB5mKtdGW19eMYtwKiQsIynqWqC5A
 nqV1Wink3V2j2XbHRgqRZEHZdq8DGlMOqYsqwrmMyJZY9oc/OnH9cdyZC/z1pqeKyXot
 Zk6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=2M7YOorv6RwrWVHgY3ejHrhkHuQ38MnpPJ/NxaJYkHo=;
 b=hpf4546QYZRhNGYRagZ8LPdjL0oJ9g8XsVbnz0C8ZcDrRG+RXvUyBJ3ivpo2IoUH/q
 Qyfgz6zqfQg39pL16zBUaK+lZAmIq/I2yo62/G2bgC0r5lDpFE5aJImQshQtL/VK/W4w
 C/Ukzxb3JM/jeNbRnskJvOEUWwEMzLaqpASmunHhx2FPBVkE4t7sRpPwdR4rCM72iWls
 NsU6v4AobLoCCBxYQVTNFbnyc7M7m6mrDJf/zTBWhXOeXXSIixY6Q0TZz23gQZ9uwooK
 4lIafpxlcG521hUUdnVskPa/LsurrMPsuCfX1WmBvWTZYGGFLoEDgxWx291IIt71ZVrS
 4x3g==
X-Gm-Message-State: APjAAAUiOtBOcbbCY9sXq3udHz5m9fmge+jyC76VZjWBn05i2XzEIUwK
 paNR+w0EE7xY1NTMm3R8Vmg=
X-Google-Smtp-Source: APXvYqzu3vHs/8ZRUpe2NLQSR5KwKW0pTRj52d3eonQ5TWWthYdonYnF4WQCOhezs0e+4EXEt2tUcQ==
X-Received: by 2002:aa7:92c2:: with SMTP id k2mr76230776pfa.93.1578148976837; 
 Sat, 04 Jan 2020 06:42:56 -0800 (PST)
Received: from madhuparna-HP-Notebook.nitk.ac.in
 ([2402:3a80:1ee1:e8a5:200b:101a:37e8:7497])
 by smtp.gmail.com with ESMTPSA id z30sm73490238pff.131.2020.01.04.06.42.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 04 Jan 2020 06:42:56 -0800 (PST)
From: madhuparnabhowmik04@gmail.com
To: stefanr@s5r6.in-berlin.de,
	paulmck@kernel.org,
	joel@joelfernandes.org
Subject: [PATCH] drivers: firewire: core-transaction: Pass lockdep condition
 to address_handler_list iterator
Date: Sat,  4 Jan 2020 20:12:15 +0530
Message-Id: <20200104144215.27590-1-madhuparnabhowmik04@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (madhuparnabhowmik04[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.194 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (madhuparnabhowmik04[at]gmail.com)
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1inkdq-0094Ou-K4
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
Cc: frextrite@gmail.com, linux-kernel@vger.kernel.org, rcu@vger.kernel.org,
 linux1394-devel@lists.sourceforge.net,
 linux-kernel-mentees@lists.linuxfoundation.org,
 Madhuparna Bhowmik <madhuparnabhowmik04@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

From: Madhuparna Bhowmik <madhuparnabhowmik04@gmail.com>

The address_handler_list is traversed with list_for_each_entry_rcu
with address_handler_list_lock held.
list_for_each_entry_rcu has built-in RCU and lock checking.
Use it for address_handler_list traversal.

Signed-off-by: Madhuparna Bhowmik <madhuparnabhowmik04@gmail.com>
---
 drivers/firewire/core-transaction.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/firewire/core-transaction.c b/drivers/firewire/core-transaction.c
index 404a035f104d..a15e70027932 100644
--- a/drivers/firewire/core-transaction.c
+++ b/drivers/firewire/core-transaction.c
@@ -61,6 +61,11 @@
 #define PHY_CONFIG_ROOT_ID(node_id)	((((node_id) & 0x3f) << 24) | (1 << 23))
 #define PHY_IDENTIFIER(id)		((id) << 30)
 
+static DEFINE_SPINLOCK(address_handler_list_lock);
+static LIST_HEAD(address_handler_list);
+
+#define address_handler_list_lock_held() lock_is_held(&(address_handler_list_lock).dep_map)
+
 /* returns 0 if the split timeout handler is already running */
 static int try_cancel_split_timeout(struct fw_transaction *t)
 {
@@ -485,7 +490,7 @@ static struct fw_address_handler *lookup_overlapping_address_handler(
 {
 	struct fw_address_handler *handler;
 
-	list_for_each_entry_rcu(handler, list, link) {
+	list_for_each_entry_rcu(handler, list, link, address_handler_list_lock_held()) {
 		if (handler->offset < offset + length &&
 		    offset < handler->offset + handler->length)
 			return handler;
@@ -514,8 +519,6 @@ static struct fw_address_handler *lookup_enclosing_address_handler(
 	return NULL;
 }
 
-static DEFINE_SPINLOCK(address_handler_list_lock);
-static LIST_HEAD(address_handler_list);
 
 const struct fw_address_region fw_high_memory_region =
 	{ .start = FW_MAX_PHYSICAL_RANGE, .end = 0xffffe0000000ULL, };
-- 
2.17.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
