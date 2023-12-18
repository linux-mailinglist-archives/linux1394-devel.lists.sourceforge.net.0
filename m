Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 51B4B816A7E
	for <lists+linux1394-devel@lfdr.de>; Mon, 18 Dec 2023 11:05:23 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rFAUp-0005Ty-6o;
	Mon, 18 Dec 2023 10:05:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <adamg@pobox.com>) id 1rFAUo-0005Ts-It
 for linux1394-devel@lists.sourceforge.net;
 Mon, 18 Dec 2023 10:05:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=q2lm1fXis5w/FF1QWhmYscTrZTgtcp590oYSm3C5WVk=; b=GCEaGSJS72cLT8Xnhbo9kBRI34
 nMx+JZz9nFLZyt9tCnG+GDDPVnU0Jqs2V4pJEDtD6maFTfbAAhGNkpM2T1dQVDsDpxSyKp+jmDE64
 gN6lauswizyLu2GTjBM4p2Z/dn3tsijB1suzo2CLI8mxGp3acyfpMw5tEu+cce/78aOo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=q2lm1fXis5w/FF1QWhmYscTrZTgtcp590oYSm3C5WVk=; b=URTneEMLmdRO4tba++5cMDX7ZU
 1PMSGjCb2yGeSqU/ydGsTf5r1Q+cBuI5I4obQtAkNryBR1aCzb/7dOcgoFcZu8vb7HYuvp7R6ynfI
 IF8dr5lgYaU7M4dLYfoHH7fdV4AIwqIdFxLp4IbUttfZJg9FjT2arTSQgmqV0nUqoNZs=;
Received: from relay05.pair.com ([216.92.24.67])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rFAUk-0006Q7-3L for linux1394-devel@lists.sourceforge.net;
 Mon, 18 Dec 2023 10:05:10 +0000
Received: from iguana.lan (99-122-168-208.lightspeed.irvnca.sbcglobal.net
 [99.122.168.208])
 by relay05.pair.com (Postfix) with ESMTP id B52AB1A1929;
 Mon, 18 Dec 2023 05:04:54 -0500 (EST)
Date: Mon, 18 Dec 2023 02:04:52 -0800
From: Adam Goldman <adamg@pobox.com>
To: Takashi Sakamoto <o-takashi@sakamocchi.jp>
Subject: Re: [RFC PATCH 7/8] firewire: core: detect model name for legacy
 layout of configuration ROM
Message-ID: <ZYAZPRt79Qa1YPS0@iguana.lan>
References: <20231217103012.41273-1-o-takashi@sakamocchi.jp>
 <20231217103012.41273-8-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231217103012.41273-8-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Sun, Dec 17, 2023 at 07:30:10PM +0900,
 Takashi Sakamoto
 wrote: > - ret = fw_csr_string(dir, attr->key, buf, bufsize); > + for (i
 = 0; i < ARRAY_SIZE(directories) && directories[i]; ++i) > + ret = f [...]
 Content analysis details:   (-0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [216.92.24.67 listed in list.dnswl.org]
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rFAUk-0006Q7-3L
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

On Sun, Dec 17, 2023 at 07:30:10PM +0900, Takashi Sakamoto wrote:
> -	ret = fw_csr_string(dir, attr->key, buf, bufsize);
> +	for (i = 0; i < ARRAY_SIZE(directories) && directories[i]; ++i)
> +		ret = fw_csr_string(directories[i], attr->key, buf, bufsize);

I believe this is incorrect. If the attribute is in the first directory 
searched, the loop will continue. The second loop iteration will set ret 
to -ENOENT because the attribute isn't in the second directory. Then 
show_text_leaf will return -ENOENT even though the attribute existed.

-- Adam


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
