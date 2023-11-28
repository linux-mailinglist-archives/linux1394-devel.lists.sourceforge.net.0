Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C2CA7FB5C1
	for <lists+linux1394-devel@lfdr.de>; Tue, 28 Nov 2023 10:28:09 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1r7uNV-0000g6-6v;
	Tue, 28 Nov 2023 09:27:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <adamg@pobox.com>) id 1r7uNP-0000fz-Gl
 for linux1394-devel@lists.sourceforge.net;
 Tue, 28 Nov 2023 09:27:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5c6ChizA+Amu7xYislqT0MlzzbAqxuOZvw0/F6NlhU4=; b=PmCk5lUQXVIPQN2PAcFq509qbN
 7BprecThsHGv0VWnj0s+AE6PdGuEWI5nH872Z+jBL6vHH3BB0EKwwb76UoB55enSbYHZZ2pzNduiR
 d2Q1T+riud9VdLBSljL4r01WklsHkef9KPI21mW2BMoptzNjEkdZD8JGd1nN4lp/vSb0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5c6ChizA+Amu7xYislqT0MlzzbAqxuOZvw0/F6NlhU4=; b=aGy0srsFOLcYyNx+mekbhcW9gv
 3qxoZdCqlE5WDRa+CMj/jLrh4qaPnPjFBvYbY5IcirUuN7Pmg4Dudvui3/dFuHvt+kJFahoF8ynMO
 OZ1zai3jPuOUFUFMEhJl4SS2c4ZuvEUMZFKhGI0p7bWzDjZ6NL9zR6Qb6iSVI8FdGBIA=;
Received: from relay05.pair.com ([216.92.24.67])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1r7uNL-0000rY-9q for linux1394-devel@lists.sourceforge.net;
 Tue, 28 Nov 2023 09:27:30 +0000
Received: from iguana.lan (99-122-168-208.lightspeed.irvnca.sbcglobal.net
 [99.122.168.208])
 by relay05.pair.com (Postfix) with ESMTP id 88F5F1A17D8;
 Tue, 28 Nov 2023 04:27:05 -0500 (EST)
Date: Tue, 28 Nov 2023 01:27:03 -0800
From: Adam Goldman <adamg@pobox.com>
To: Takashi Sakamoto <o-takashi@sakamocchi.jp>
Subject: Re: [PATCH] Fix missing sysfs vendor/model entries for some devices
Message-ID: <ZWWyZoFJhtwu9ciS@iguana.lan>
References: <ZWMgBK3vnYjy63AD@iguana.lan>
 <20231127104003.GA5447@workstation.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231127104003.GA5447@workstation.local>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Nov 27, 2023 at 07:40:03PM +0900, Takashi Sakamoto
 wrote: > Thanks for the patch. Indeed, for the legacy layout of Configuration
 ROM, > current implementation of core functionality does not pi [...] 
 Content analysis details:   (-0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [216.92.24.67 listed in list.dnswl.org]
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1r7uNL-0000rY-9q
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
Cc: linux1394-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On Mon, Nov 27, 2023 at 07:40:03PM +0900, Takashi Sakamoto wrote:
> Thanks for the patch. Indeed, for the legacy layout of Configuration ROM,
> current implementation of core functionality does not pick up enough
> information from the vendor directory. I think you already know the similar
> case in the issue filed in systemd project.

Thanks for your reply and for your work maintaining the FireWire 
subsystem.

> The patch format is not compliant to Linux kernel development, while I
> would evaluate it.

Should I submit the patch again in canonical patch format[1]?

> However, I need more actual examples. Would I ask you
> to provide images of Configuration ROM retrieved by your test devices?
> I think you own Sony DCR-TRV120 and Panasonic AG-DV1DC. I maintain
> collections of Configuration ROM[2] and it is preferable to receive merge
> request in github.com service.

I've sent a merge request with the Configuration ROM images.


[1] https://docs.kernel.org/process/submitting-patches.html#the-canonical-patch-format

-- Adam


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
