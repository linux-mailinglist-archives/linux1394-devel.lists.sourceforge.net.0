Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FDEB30ECEE
	for <lists+linux1394-devel@lfdr.de>; Thu,  4 Feb 2021 08:05:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1l7Yi3-0006ll-Vh; Thu, 04 Feb 2021 07:05:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <joe@perches.com>) id 1l7Yi2-0006lX-O1
 for linux1394-devel@lists.sourceforge.net; Thu, 04 Feb 2021 07:05:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2Vc/gwNFpAtBywVHgw4CpIH8NRDT6d0lUvFiEFNs+NI=; b=GORGePBjAR2KOqMqUHuyEbecNe
 KvFXCnt2piAEjq4kERrPKMb44KYLSBo27B3md0KSsj9n3gtbNkGxD2Ju15Sm4Ef4eIND3eVj96nZg
 ZObed1qNy7lUPP2SOFATRyJoLgqsGecyqQG2dMw2APAjXKauX3iXsFRjXJngmdH2je1M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2Vc/gwNFpAtBywVHgw4CpIH8NRDT6d0lUvFiEFNs+NI=; b=Vymn+u29YLazqiQv4FGhIGmZ42
 eTlh6hJwKCgNJ2nnlG7ncGfdS5gS/nqPuapdsm3XPQJdOJyKnSj+RBBXqsA4O/wY5+2y/u+DTD/m8
 DLXCXa0YCx/uQh8mvEaXDzszSw7UR7pHlIcgqxsH40hhA4kczLjipn+fo9vg0xXnF2c8=;
Received: from smtprelay0219.hostedemail.com ([216.40.44.219]
 helo=smtprelay.hostedemail.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1l7Yhm-0003m6-5L
 for linux1394-devel@lists.sourceforge.net; Thu, 04 Feb 2021 07:05:43 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay04.hostedemail.com (Postfix) with ESMTP id 45834180A911F;
 Thu,  4 Feb 2021 07:05:24 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:988:989:1260:1261:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1539:1593:1594:1711:1714:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3351:3622:3865:4321:5007:7652:7875:10004:10400:10848:11026:11232:11658:11914:12043:12296:12297:12740:12895:13069:13311:13357:13439:13894:14659:14721:21080:21451:21611:21627:21990:30054:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: tank64_5c15dea275da
X-Filterd-Recvd-Size: 1662
Received: from [192.168.1.159] (unknown [47.151.137.21])
 (Authenticated sender: joe@perches.com)
 by omf11.hostedemail.com (Postfix) with ESMTPA;
 Thu,  4 Feb 2021 07:05:23 +0000 (UTC)
Message-ID: <d4c12ffbfca8a66ddaa3224296e964ecf9aa0705.camel@perches.com>
Subject: Re: [PATCH] firewire: convert sysfs sprintf/snprintf family to
 sysfs_emit
From: Joe Perches <joe@perches.com>
To: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>, stefanr@s5r6.in-berlin.de
Date: Wed, 03 Feb 2021 23:05:22 -0800
In-Reply-To: <1612421432-39124-1-git-send-email-jiapeng.chong@linux.alibaba.com>
References: <1612421432-39124-1-git-send-email-jiapeng.chong@linux.alibaba.com>
User-Agent: Evolution 3.38.1-1 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [216.40.44.219 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.40.44.219 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1l7Yhm-0003m6-5L
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
Cc: linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On Thu, 2021-02-04 at 14:50 +0800, Jiapeng Chong wrote:
> Fix the following coccicheck warning:
> =

> ./drivers/firewire/core-device.c:375:8-16: WARNING: use scnprintf or
> sprintf.
[]
> diff --git a/drivers/firewire/core-device.c b/drivers/firewire/core-devic=
e.c
[]
> @@ -372,8 +372,7 @@ static ssize_t rom_index_show(struct device *dev,
> =A0	struct fw_device *device =3D fw_device(dev->parent);
> =A0	struct fw_unit *unit =3D fw_unit(dev);
> =A0
> =

> -	return snprintf(buf, PAGE_SIZE, "%d\n",
> -			(int)(unit->directory - device->config_rom));
> +	return sysfs_emit(buf, "%d\n", (int)(unit->directory - device->config_r=
om));

Perhaps this should use the ptrdiff_t qualifier '%td' instead:

	return sysfs_emit(buf, "%td\n", unit->directory - device->config_rom);




_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
