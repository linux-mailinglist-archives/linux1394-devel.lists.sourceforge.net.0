Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DCB3304D54
	for <lists+linux1394-devel@lfdr.de>; Wed, 27 Jan 2021 00:25:27 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1l4Xi2-00067P-5R; Tue, 26 Jan 2021 23:25:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rdunlap@infradead.org>) id 1l4Xhz-000674-Sc
 for linux1394-devel@lists.sourceforge.net; Tue, 26 Jan 2021 23:25:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wDHy+8X30ygCpbgc3idpX3FV4wc82BEW0tUmbN+bNfs=; b=aJ2Hu7S/C3HLGQ+qYLAzQYTSOC
 BBskckLJ8xaMwOJ2kgKCvb9Kk3UXeFpJ3atF8svUUH92Dg5wXTQWfNyVak68NRk3wZOXH27v+SNiS
 w+Gb/aC1WO0ue8EiY/YGhohY9NnCZt3Xs5zRTzHtanO+MjvNit8R7+X09qDpDHFVwHn0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=wDHy+8X30ygCpbgc3idpX3FV4wc82BEW0tUmbN+bNfs=; b=C
 UnqtiGy1+SD9ydiwSszIgjvrEpEG/pAf1GqwR9SjiGQxCN0RPNV1jPx8klBC0j+88s/g0lULEr5wN
 iUb+Eis9NLHhx5BEyH5YvXvyI6sNfcjsm+JWFVq7toF1yZT6pUjaxjkMxYH84RvebY33++Iqu+2ps
 G3haHrfNj/KvJx8s=;
Received: from merlin.infradead.org ([205.233.59.134])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l4Xhp-00Bo6j-1V
 for linux1394-devel@lists.sourceforge.net; Tue, 26 Jan 2021 23:25:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=wDHy+8X30ygCpbgc3idpX3FV4wc82BEW0tUmbN+bNfs=; b=bLyb5OhEC7WPbuT+2w07OQUe9+
 qtYW2jP4Q0m9H/SC9O0xdjysDEUXpeWrnucrpQpWWyaUDDKr39/H73G3W/2DDX5lDMTNjNsMJ4JMn
 BLKVy2LyscLN4AIL5wPWKxVEA94VPtrQI+618DoS6vFt0aLGzhVYQq+NMC52sXSttleuiYEESWMJR
 TeKnRAl3QZ6SwJBF9PnbiTdaGnlB8fstf0kC8aJxVesY+Ri94HESw7ZWclKKqvB2Hrh7zssQ1fYnB
 GzN4rN9UrTRvGGea0g+IdIkLzwkKNEJ8iv7Xx9ot0WSTtUYZCN99RKHhzn1g53U0k4PgmxNs0j/YK
 mXVzZb3w==;
Received: from [2601:1c0:6280:3f0::7650] (helo=merlin.infradead.org)
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l4Xhb-0000kY-6L; Tue, 26 Jan 2021 23:24:51 +0000
From: Randy Dunlap <rdunlap@infradead.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH RESEND v2] include/linux: remove repeated words
Date: Tue, 26 Jan 2021 15:24:44 -0800
Message-Id: <20210126232444.22861-1-rdunlap@infradead.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: nvidia.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [205.233.59.134 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1l4Xhp-00Bo6j-1V
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
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>, kvm@vger.kernel.org,
 Randy Dunlap <rdunlap@infradead.org>, Oleg Nesterov <oleg@redhat.com>,
 Kirti Wankhede <kwankhede@nvidia.com>, linux-input@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 linux1394-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Drop the doubled word "for" in a comment. {firewire-cdev.h}
Drop the doubled word "in" in a comment. {input.h}
Drop the doubled word "a" in a comment. {mdev.h}
Drop the doubled word "the" in a comment. {ptrace.h}

Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Stefan Richter <stefanr@s5r6.in-berlin.de>
Cc: linux1394-devel@lists.sourceforge.net
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: linux-input@vger.kernel.org
Cc: Kirti Wankhede <kwankhede@nvidia.com>
Cc: kvm@vger.kernel.org
Cc: Oleg Nesterov <oleg@redhat.com>
---
v2: combine 4 patches into one patch and resend.
Andrew, please merge.

 include/linux/mdev.h               |    2 +-
 include/linux/ptrace.h             |    2 +-
 include/uapi/linux/firewire-cdev.h |    2 +-
 include/uapi/linux/input.h         |    2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

--- linux-next-20210125.orig/include/uapi/linux/firewire-cdev.h
+++ linux-next-20210125/include/uapi/linux/firewire-cdev.h
@@ -844,7 +844,7 @@ struct fw_cdev_queue_iso {
  * struct fw_cdev_start_iso - Start an isochronous transmission or reception
  * @cycle:	Cycle in which to start I/O.  If @cycle is greater than or
  *		equal to 0, the I/O will start on that cycle.
- * @sync:	Determines the value to wait for for receive packets that have
+ * @sync:	Determines the value to wait for receive packets that have
  *		the %FW_CDEV_ISO_SYNC bit set
  * @tags:	Tag filter bit mask.  Only valid for isochronous reception.
  *		Determines the tag values for which packets will be accepted.
--- linux-next-20210125.orig/include/uapi/linux/input.h
+++ linux-next-20210125/include/uapi/linux/input.h
@@ -84,7 +84,7 @@ struct input_id {
  * in units per radian.
  * When INPUT_PROP_ACCELEROMETER is set the resolution changes.
  * The main axes (ABS_X, ABS_Y, ABS_Z) are then reported in
- * in units per g (units/g) and in units per degree per second
+ * units per g (units/g) and in units per degree per second
  * (units/deg/s) for rotational axes (ABS_RX, ABS_RY, ABS_RZ).
  */
 struct input_absinfo {
--- linux-next-20210125.orig/include/linux/mdev.h
+++ linux-next-20210125/include/linux/mdev.h
@@ -42,7 +42,7 @@ struct device *mdev_get_iommu_device(str
  *			@mdev: mdev_device structure on of mediated device
  *			      that is being created
  *			Returns integer: success (0) or error (< 0)
- * @remove:		Called to free resources in parent device's driver for a
+ * @remove:		Called to free resources in parent device's driver for
  *			a mediated device. It is mandatory to provide 'remove'
  *			ops.
  *			@mdev: mdev_device device structure which is being
--- linux-next-20210125.orig/include/linux/ptrace.h
+++ linux-next-20210125/include/linux/ptrace.h
@@ -171,7 +171,7 @@ static inline void ptrace_event(int even
  *
  * Check whether @event is enabled and, if so, report @event and @pid
  * to the ptrace parent.  @pid is reported as the pid_t seen from the
- * the ptrace parent's pid namespace.
+ * ptrace parent's pid namespace.
  *
  * Called without locks.
  */


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
