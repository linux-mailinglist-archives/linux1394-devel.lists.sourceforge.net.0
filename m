Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E44DD81B60C
	for <lists+linux1394-devel@lfdr.de>; Thu, 21 Dec 2023 13:37:15 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rGIIQ-0001IL-BA;
	Thu, 21 Dec 2023 12:37:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <adamg@pobox.com>) id 1rGIIN-0001I2-UX
 for linux1394-devel@lists.sourceforge.net;
 Thu, 21 Dec 2023 12:37:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5tNkEhtmwV+9V6OaOt7rguqa90ubyJVRD5LNpGPp6oY=; b=hz963q5Itw3qi41uJjyaqJfYkQ
 gx0ugL0PzHWhUOk06epdDTKUTb5EVnVgt0U4RQfNdjmwM9L8TnVIiKzhMNCZQcbSX8n68OjDGDOex
 kCwEHXk5894Nw72pWbXE1UDL6XZy7J3y8rk6cprziiNA5u78mLurpoi31lwkNWMCfMSk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5tNkEhtmwV+9V6OaOt7rguqa90ubyJVRD5LNpGPp6oY=; b=nK/wg12D8X5IKGSm3zNylm3qH1
 lztFdmTqNeSAmHLkgryLouGwitaiBlZDYExaZmJveZiEEZb1jgkRGptrODgrv1PUDizl1II1GCo9C
 ACCxDcYd435c2QtTAjI1eL8FExK5SLqY9jBxzafg8EDIm7DIUcnWECBx2L0Q3XHLVvdU=;
Received: from relay05.pair.com ([216.92.24.67])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rGIIN-0007Jv-Fd for linux1394-devel@lists.sourceforge.net;
 Thu, 21 Dec 2023 12:37:00 +0000
Received: from iguana.lan (99-122-168-208.lightspeed.irvnca.sbcglobal.net
 [99.122.168.208])
 by relay05.pair.com (Postfix) with ESMTP id B64761A163A;
 Thu, 21 Dec 2023 07:36:45 -0500 (EST)
Date: Thu, 21 Dec 2023 04:50:08 -0800
From: Adam Goldman <adamg@pobox.com>
To: Takashi Sakamoto <o-takashi@sakamocchi.jp>
Subject: Re: [PATCH 7/8] firewire: core: detect model name for legacy layout
 of configuration ROM
Message-ID: <ZYQ0gNwDsocA9QS7@iguana.lan>
References: <20231220041806.39816-1-o-takashi@sakamocchi.jp>
 <20231220041806.39816-8-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231220041806.39816-8-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, > - ret = fw_csr_string(dir, attr->key, buf, bufsize);
 > + for (i = 0; i < ARRAY_SIZE(directories) && !!directories[i]; ++i) { >
 + int result = fw_csr_string(directories[i], attr->key, buf, bufsize); [...]
 Content analysis details:   (-0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [216.92.24.67 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rGIIN-0007Jv-Fd
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

> -	ret = fw_csr_string(dir, attr->key, buf, bufsize);
> +	for (i = 0; i < ARRAY_SIZE(directories) && !!directories[i]; ++i) {
> +		int result = fw_csr_string(directories[i], attr->key, buf, bufsize);
> +		// Detected.
> +		if (result >= 0)
> +			ret = result;
> +	}
>  
>  	if (ret >= 0) {

ret is an automatic variable with no initializer. Unless you initialize 
it (to -ENOENT), this is UB.

-- Adam


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
