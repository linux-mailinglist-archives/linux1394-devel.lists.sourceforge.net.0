Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1934A81DE50
	for <lists+linux1394-devel@lfdr.de>; Mon, 25 Dec 2023 06:43:24 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rHdk1-0002GB-MH;
	Mon, 25 Dec 2023 05:43:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <adamg@pobox.com>) id 1rHdjv-0002Fi-9n
 for linux1394-devel@lists.sourceforge.net;
 Mon, 25 Dec 2023 05:42:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=praz2V3Z2akqotB7cSjd8Nh+JL/5vopOfE25wZP2Rf0=; b=SGH4nE2sqtOeqE2Lz3OGI5DKF1
 bW9afOIQ+ZHO3fITBLSum+twWq4ID7Rad409yL+YX8JAWu9okFHHLCArnZIIJyD2KZ0MQBIb8dfZN
 8R4re+sg40yam0SaTAoYcULD7D3tJ8DGEvasQHA7cpRPhrj1FxvgaR+y7a6SqsZW7D0Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=praz2V3Z2akqotB7cSjd8Nh+JL/5vopOfE25wZP2Rf0=; b=ajnhsFW8jL5hHYBN4Xs/UGzDcT
 I7Se8Oq5oewc5YJkGDBU8zwTphqXG7S6RYob2JGKUbWYUC7OjTAIRnFrHw0mxwK1VjlcjKabsCWG0
 wNatkiVQFAl7ZRW3tMgUbEQFdeg7dR7lhf4Hf1vY3ZOfW3U6G9TvThZ3ykuS6jedZd8s=;
Received: from relay05.pair.com ([216.92.24.67])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rHdjt-0000jZ-Co for linux1394-devel@lists.sourceforge.net;
 Mon, 25 Dec 2023 05:42:59 +0000
Received: from iguana.lan (99-122-168-208.lightspeed.irvnca.sbcglobal.net
 [99.122.168.208])
 by relay05.pair.com (Postfix) with ESMTP id 83FAD1A15E5;
 Mon, 25 Dec 2023 00:42:48 -0500 (EST)
Date: Sun, 24 Dec 2023 21:42:42 -0800
From: Adam Goldman <adamg@pobox.com>
To: Takashi Sakamoto <o-takashi@sakamocchi.jp>
Subject: Re: [PATCH v2 0/8] firewire: core: support legacy layout of
 configuration ROM for AV/C device
Message-ID: <ZYkWK7zEiyV3S5Qx@iguana.lan>
References: <20231221134849.603857-1-o-takashi@sakamocchi.jp>
 <20231222141418.GA625065@workstation.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231222141418.GA625065@workstation.local>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Dec 22, 2023 at 11:14:18PM +0900, Takashi Sakamoto
 wrote: > Applied the above patches to for-next branch[1]. Thanks for your
 reviewing. Hi Takashi, Thanks for your work on this. 
 Content analysis details:   (-0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [216.92.24.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rHdjt-0000jZ-Co
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

On Fri, Dec 22, 2023 at 11:14:18PM +0900, Takashi Sakamoto wrote:
> Applied the above patches to for-next branch[1]. Thanks for your reviewing.

Hi Takashi,

Thanks for your work on this.

-- Adam


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
