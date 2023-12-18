Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DB4A816AA0
	for <lists+linux1394-devel@lfdr.de>; Mon, 18 Dec 2023 11:12:13 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rFAbR-0007yF-LF;
	Mon, 18 Dec 2023 10:12:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <adamg@pobox.com>) id 1rFAbP-0007ws-MI
 for linux1394-devel@lists.sourceforge.net;
 Mon, 18 Dec 2023 10:12:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aPXxWe48z5dhU1TX2H4ycgYjN+aJ6IVmtasnGEOglV0=; b=H83ZQN8nVz01zMGQlTG/xK2ZUJ
 iHNSK4V2nkMdi73oDpijxVo+e0HFUdMKnAeIuUZTJfAnuLXKfjFbMZrHzPWiwqTgUjuIbJCvJWZAZ
 fdW3chyqT2hmLA/my9p2MBr2dPRkoHgK7+BKGzim3LRYvBI9V+qv1mXwLap5YiSBv30A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=aPXxWe48z5dhU1TX2H4ycgYjN+aJ6IVmtasnGEOglV0=; b=JOYmRrhc2Im5qQ177DojudKgsp
 zjO5YIC+J94dfNC6osoD4bEZlC1MVd6rCBijruYc3DTZsnodKXnP5fct3MIWIujDH4oKihRw/xKkd
 qwY2oD1z0xEDRbawQfmvzFZoNbfVDurJvtFSjyWkd2NzQaNsFSKvUwVABUzb1t2fgG6Y=;
Received: from relay05.pair.com ([216.92.24.67])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rFAbL-0006pX-OC for linux1394-devel@lists.sourceforge.net;
 Mon, 18 Dec 2023 10:11:59 +0000
Received: from iguana.lan (99-122-168-208.lightspeed.irvnca.sbcglobal.net
 [99.122.168.208])
 by relay05.pair.com (Postfix) with ESMTP id 9F4FE1A23FC;
 Mon, 18 Dec 2023 05:11:44 -0500 (EST)
Date: Mon, 18 Dec 2023 02:11:42 -0800
From: Adam Goldman <adamg@pobox.com>
To: Takashi Sakamoto <o-takashi@sakamocchi.jp>
Subject: Re: [RFC PATCH 8/8] firewire: core: change modalias of unit device
 with backward incompatibility
Message-ID: <ZYAa0vJYppKgr9x7@iguana.lan>
References: <20231217103012.41273-1-o-takashi@sakamocchi.jp>
 <20231217103012.41273-10-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231217103012.41273-10-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Sun, Dec 17, 2023 at 07:30:12PM +0900,
 Takashi Sakamoto
 wrote: > + vendor_directory = search_directory(root_directory, CSR_DIRECTORY
 | CSR_VENDOR);
 Setting the CSR_DIRECTORY bit here is extraneous since search_directory()
 also sets it. 
 Content analysis details:   (-0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [216.92.24.67 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rFAbL-0006pX-OC
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

On Sun, Dec 17, 2023 at 07:30:12PM +0900, Takashi Sakamoto wrote:
> +	vendor_directory = search_directory(root_directory, CSR_DIRECTORY | CSR_VENDOR);

Setting the CSR_DIRECTORY bit here is extraneous since search_directory() also sets it.

-- Adam


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
