Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7344C83C263
	for <lists+linux1394-devel@lfdr.de>; Thu, 25 Jan 2024 13:15:49 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rSydi-000469-SL;
	Thu, 25 Jan 2024 12:15:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <adamg@pobox.com>) id 1rSydh-00045y-Pg
 for linux1394-devel@lists.sourceforge.net;
 Thu, 25 Jan 2024 12:15:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SD5Z+jh6hiGYELwRN7JDmZcs7BOCaZY6Lo6jZSAonFI=; b=RFrmpcDlYCJ82/pmvxSfqfqKVS
 TPqMK31aE7GPJUDd3hblnSMppaKBfE58ugQbKg8RC1IqU86d9IkyQR+9HTfA41WERErpbwx/K2d0s
 NbsusKEZkuTS2ifJhEdMAnvlywGscwEmb50c0UDZUvm825bywEKlhPIy1v3suvbC8z/M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=SD5Z+jh6hiGYELwRN7JDmZcs7BOCaZY6Lo6jZSAonFI=; b=a
 XxUk0Af/0k66g6EEXR/oWLX24+aWaqvgzvrMyu2e0hxofkXEQtodI1vlH82WTMNqFA3oRQ3nFYvcG
 R26RyRY/67DGJY1g7Op48lCBxeaHWRFXjy5gT/D0ckYh+ZKKcgdIiKlAomO4Q0ti9rkMMkN8vkErn
 499tlxNkwqXZeFbY=;
Received: from pb-smtp20.pobox.com ([173.228.157.52])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rSydg-0007TS-RW for linux1394-devel@lists.sourceforge.net;
 Thu, 25 Jan 2024 12:15:26 +0000
Received: from pb-smtp20.pobox.com (unknown [127.0.0.1])
 by pb-smtp20.pobox.com (Postfix) with ESMTP id 32D422AB80
 for <linux1394-devel@lists.sourceforge.net>;
 Thu, 25 Jan 2024 07:15:19 -0500 (EST) (envelope-from adamg@pobox.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=pobox.com; h=date:from
 :to:subject:message-id:mime-version:content-type; s=sasl; bh=OHQ
 4ZadZmhO6b09OrBub42O4cqQrcJHcMJRi3W5w9jk=; b=Oweq56CRikpTMGsIKY9
 0RkPE6XmFXWJKdgmSYr6MDoGxhT0EwluQcbn6iMdAlXjMuymJUM5X+HcYFhkUZF6
 qlvSMkeSHv4qIrWZjXAHPbI4ca0/r0E5odLMY8Bk9iT+GG+KHT9CKKsjPSGv1gWv
 kmh7fqikksH+pGEy0gmyfc5I=
Received: from pb-smtp20.sea.icgroup.com (unknown [127.0.0.1])
 by pb-smtp20.pobox.com (Postfix) with ESMTP id 2BB8D2AB7F
 for <linux1394-devel@lists.sourceforge.net>;
 Thu, 25 Jan 2024 07:15:19 -0500 (EST) (envelope-from adamg@pobox.com)
Received: from pogo.deviceside.com (unknown [71.19.144.253])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by pb-smtp20.pobox.com (Postfix) with ESMTPSA id F14242AB7E
 for <linux1394-devel@lists.sourceforge.net>;
 Thu, 25 Jan 2024 07:15:15 -0500 (EST) (envelope-from adamg@pobox.com)
Received: from iguana.24-8.net (99-122-168-208.lightspeed.irvnca.sbcglobal.net
 [99.122.168.208])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (prime256v1) server-signature ECDSA (prime256v1)
 server-digest SHA256) (No client certificate requested)
 (Authenticated sender: iguana@pogo.deviceside.com)
 by pogo.deviceside.com (Postfix) with ESMTPSA id 70AABC09AD
 for <linux1394-devel@lists.sourceforge.net>;
 Thu, 25 Jan 2024 04:15:14 -0800 (PST)
Date: Thu, 25 Jan 2024 04:15:12 -0800
From: Adam Goldman <adamg@pobox.com>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH] firewire: core: mask previous entry's type bits when looking
 for leaf
Message-ID: <ZbJQ0JdbGixJouvn@iguana.24-8.net>
MIME-Version: 1.0
Content-Disposition: inline
X-Pobox-Relay-ID: 65E67314-BB7B-11EE-A5BD-F515D2CDFF5E-07713566!pb-smtp20.pobox.com
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: When searching a configuration ROM directory for a leaf
 corresponding
 to a specific key_ID, disregard the type bits of the directory entry. The
 configuration ROM of FireWire devices can contain textual descriptor leafs
 (strings) for vendor name and model name. We use these to populate the
 vendor_name and model_name entries in sysfs. Each [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [173.228.157.52 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rSydg-0007TS-RW
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

When searching a configuration ROM directory for a leaf corresponding to 
a specific key_ID, disregard the type bits of the directory entry.

The configuration ROM of FireWire devices can contain textual descriptor 
leafs (strings) for vendor name and model name. We use these to populate 
the vendor_name and model_name entries in sysfs. Each descriptor leaf has a 
descriptor directory entry pointing to it. The identity of the descriptor 
leaf is indicated by the key_ID of the directory entry immediately before 
the descriptor leaf's directory entry. The key_ID is the low 6 bits of the 
high byte of the directory entry, and the type is the high 2 bits.

In most cases, the directory entry before a descriptor directory entry will 
be an immediate value (type=0). However, it is also valid for it to be a 
directory (type=3). Thus, when looking for a specific leaf, we must mask 
off the type bits and compare only the key_ID.

One affected device is the Sony DVMC-DA1, which is missing the vendor_name 
sysfs entry without this change.

The recent commit 141d9c6e003b806d8faeddeec7053ee2691ea61a fixed missing 
model and model_name entries for the DVMC-DA1, but those were caused by a 
different issue.

Signed-Off-By: Adam Goldman <adamg@pobox.com>
---

--- linux-6.8-rc1.orig/drivers/firewire/core-device.c	2024-01-21 14:11:32.000000000 -0800
+++ linux-6.8-rc1/drivers/firewire/core-device.c	2024-01-24 03:56:56.000000000 -0800
@@ -72,7 +72,7 @@
 
 	fw_csr_iterator_init(&ci, directory);
 	while (fw_csr_iterator_next(&ci, &key, &value)) {
-		if (last_key == search_key &&
+		if ((last_key & 0x3f) == search_key &&
 		    key == (CSR_DESCRIPTOR | CSR_LEAF))
 			return ci.p - 1 + value;
 


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
