Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E7E93CB528
	for <lists+linux1394-devel@lfdr.de>; Fri, 16 Jul 2021 11:28:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:Date:Sender:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DKWFLtV3iN0/iHlg7k32MMuhx1gtq4NVYBrpYPHeq8o=; b=ZoT2git27JabIqcZPDVj5gF6mw
	OCAjUdcS//vuW1G55XqcP/F3+ZqdpGQJHP6vWjw+dDPfZnJky9hUStEGaUbr0OA5GnEfLqbHfllxp
	Q1NP25tfmz5Otbjnd6DjUJ8JGUTJCuyWNLZO8LEaeE//jtyxRzFt5cfBejjGZ5XVd2xM=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1m4K90-0000L3-Ng; Fri, 16 Jul 2021 09:28:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <pmladek@suse.com>) id 1m4K8y-0000Ku-Km
 for linux1394-devel@lists.sourceforge.net; Fri, 16 Jul 2021 09:28:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Cp3iI/FeTKVTMDdHAVYBfn6oSpeqLceHGqZglsJJ2Sg=; b=gP5M+IbbQHJh1ijLx4fFNxqOdZ
 P99yy6Qxya/L/AfY1huvlXpSMhSdEI5HflDOld6KxytOb0l1cbz592x2JfnpXjrCufTBYrDanl41n
 yDRxMviBxgv/Mwgr6lVmaAQbbrFJQJGOeb/XF0or/2mpthRvPIUZDjuNrirU5LxHisJk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Cp3iI/FeTKVTMDdHAVYBfn6oSpeqLceHGqZglsJJ2Sg=; b=eJhbvNuCwZtn4DDAwzsOFWJPVX
 p3c4eNy9OKgy0Mooir4BeR7AoDJKZIl54A1VW38AEQGVo62ma9IgryLUX4sN5/Wh7AB+BGo5eMAed
 OdRE1qo1cynrPll0AdMWlpm3KTgqaxMvHwaetdcizEAF8dUWXN67+INrGHbDf6tsDnuA=;
Received: from smtp-out2.suse.de ([195.135.220.29])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1m4K8q-00AH7y-UT
 for linux1394-devel@lists.sourceforge.net; Fri, 16 Jul 2021 09:28:28 +0000
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
 by smtp-out2.suse.de (Postfix) with ESMTP id 42CFE1FE8B;
 Fri, 16 Jul 2021 09:28:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=susede1;
 t=1626427692; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Cp3iI/FeTKVTMDdHAVYBfn6oSpeqLceHGqZglsJJ2Sg=;
 b=YxxObQMPmvyp94uaMpucyTdBcXWFv+7SmJSO9vUHpubHkcSmXSaR410WmH6c8C3jcTkZQS
 GPUimwpfzumOFnBSKj7u4bITbYBupBCmk8AGVtaDx1K1XlmDS/8GHaVgfnEkhYECdILQmQ
 T664SnftDK61kxF6Sze0ksq//3PXoUs=
Received: from suse.cz (unknown [10.100.224.162])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by relay2.suse.de (Postfix) with ESMTPS id 9713EA3BB0;
 Fri, 16 Jul 2021 09:28:11 +0000 (UTC)
Date: Fri, 16 Jul 2021 11:28:11 +0200
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH v2] media: firewire: firedtv-avc: fix a buffer overflow
 in avc_ca_pmt()
Message-ID: <YPFRK1doifLSwnV3@alley>
References: <YHaulytonFcW+lyZ@mwanda>
 <20210607152348.GX1955@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210607152348.GX1955@kadam>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: nsfocus.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1m4K8q-00AH7y-UT
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
From: Petr Mladek via linux1394-devel <linux1394-devel@lists.sourceforge.net>
Reply-To: Petr Mladek <pmladek@suse.com>
Cc: Yang Yanchao <yangyanchao6@huawei.com>, Luo Likang <luolikang@nsfocus.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux1394-devel@lists.sourceforge.net, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On Mon 2021-06-07 18:23:48, Dan Carpenter wrote:
> The bounds checking in avc_ca_pmt() is not strict enough.  It should
> be checking "read_pos + 4" because it's reading 5 bytes.  If the
> "es_info_length" is non-zero then it reads a 6th byte so there needs to
> be an additional check for that.
> 
> I also added checks for the "write_pos".  I don't think these are
> required because "read_pos" and "write_pos" are tied together so
> checking one ought to be enough.  But they make the code easier to
> understand for me.  The check on write_pos is:
> 
> 	if (write_pos + 4 >= sizeof(c->operand) - 4) {
> 
> The first "+ 4" is because we're writing 5 bytes and the last " - 4"
> is to leave space for the CRC.
> 
> The other problem is that "length" can be invalid.  It comes from
> "data_length" in fdtv_ca_pmt().
> 
> Cc: stable@vger.kernel.org
> Reported-by: Luo Likang <luolikang@nsfocus.com>
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>

I do not see this fix in 5.14-rc1. Has it been solved another
way in the end, please?

Best Regards,
Petr


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
