Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B57A32E31E
	for <lists+linux1394-devel@lfdr.de>; Fri,  5 Mar 2021 08:43:02 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1lI56m-0008CI-Ic; Fri, 05 Mar 2021 07:42:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <gustavoars@kernel.org>) id 1lI56k-0008CB-Vo
 for linux1394-devel@lists.sourceforge.net; Fri, 05 Mar 2021 07:42:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vM93lw4tZmjCpuLbJUDls2dF4PtcixB7z0qSu0H1XW0=; b=RMdX97HA1TobmOOKwtInF6pZZZ
 M1M3AubiEfFsec1U4iDjkbePZy5T/tdaUn/9L3k6A84vl99I8+zI8aBZBfMrm2wWL4nE0agQmdIvr
 aISlMGtcNkISmoDHH3KDfblIfeip1pn2Cjb0eohQCcX2q8e5+5EkgnD5zrAdRQ0exflo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=vM93lw4tZmjCpuLbJUDls2dF4PtcixB7z0qSu0H1XW0=; b=g
 r19597wKfZcLloT3xvnnf7ziTyc4aBE5IFPcV90V+6s7ELpkn8wVkw3aKrdJO9lxAUuo2DoaDMe8D
 PjM/UUcEpyNT1QO6587zL2wYRugj0tOLS/B3ILTx67W1URvkXgFNBFz+w6eqTskzbVwsbAaUiwerf
 CqZShc6ERY/iY6OU=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lI56Z-0002Ax-4l
 for linux1394-devel@lists.sourceforge.net; Fri, 05 Mar 2021 07:42:46 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 506DC64F44;
 Fri,  5 Mar 2021 07:42:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1614930147;
 bh=uTFqnv6qmEoQwDoOMs90+0OH/pwEDX4h2tr5/bq6uGo=;
 h=Date:From:To:Cc:Subject:From;
 b=SWFzHV5i5pQ/GvRpen6FZgdRQhi5jcuZssly8nU0K+h9elbOz0NjOhC7j7+g3QWAS
 ZBUqUvaOZ6cq791A7TtWGqKkoOxCjhE3pMcicYe/VpNouxljqJxT/ifw4ifYocfy5V
 0cgnB35f3OJxeGICkHuKzKNxrHSsmRILo2/gJKi0zm7GSrOx0MA38ThmWs4hoEeHW6
 P9+hh8aX7t7X1tFRE5qS0luM0Q27HlC0JZWyF1FhcEEN5Q8pHCf1apzGO2gXQcM6vS
 Mtw6mz0gXamM1n8hzYWiKYBT1REs5dmBoJjtcwWvqtAgMldvQ3hvGtpTwzJgfmcqQH
 6Yy29atjh7j7A==
Date: Fri, 5 Mar 2021 01:42:23 -0600
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Stefan Richter <stefanr@s5r6.in-berlin.de>
Subject: [PATCH][next] firewire: core: Fix fall-through warnings for Clang
Message-ID: <20210305074223.GA123031@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lI56Z-0002Ax-4l
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
Cc: linux1394-devel@lists.sourceforge.net, linux-hardening@vger.kernel.org,
 linux-kernel@vger.kernel.org, "Gustavo A. R. Silva" <gustavoars@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

In preparation to enable -Wimplicit-fallthrough for Clang, fix a warning
by explicitly adding a fallthrough pseudo-keyword.

Link: https://github.com/KSPP/linux/issues/115
Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
---
 drivers/firewire/core-topology.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/firewire/core-topology.c b/drivers/firewire/core-topology.c
index ec68ed27b0a5..b63d55f5ebd3 100644
--- a/drivers/firewire/core-topology.c
+++ b/drivers/firewire/core-topology.c
@@ -58,6 +58,7 @@ static u32 *count_ports(u32 *sid, int *total_port_count, int *child_port_count)
 		case SELFID_PORT_PARENT:
 		case SELFID_PORT_NCONN:
 			(*total_port_count)++;
+			fallthrough;
 		case SELFID_PORT_NONE:
 			break;
 		}
-- 
2.27.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
