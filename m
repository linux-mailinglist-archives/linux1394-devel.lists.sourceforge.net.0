Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 30EA783D1F1
	for <lists+linux1394-devel@lfdr.de>; Fri, 26 Jan 2024 02:17:41 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rTAqS-0008OC-4f;
	Fri, 26 Jan 2024 01:17:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rTAqQ-0008O3-EY
 for linux1394-devel@lists.sourceforge.net;
 Fri, 26 Jan 2024 01:17:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NSUtvtTjYwwuiOYW6ivK/yDR8H8fHOXmVMuUGxG4x4c=; b=X6steXcG3Bv4LZEuFKO//R+WFm
 dZONendpzrouS2fRB1W+qO7ujgHBusqvcVMmpfNVbxcMIstX0CyoORrEr3/ewDSddpTvUtlALJNgE
 w6aO21g7vOtmtyHd0Jh9tEa7rawIYx4fVvJBDzUEcLvBcadC6MWk/CoTzhNOvOkxE0Bc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NSUtvtTjYwwuiOYW6ivK/yDR8H8fHOXmVMuUGxG4x4c=; b=hslgvo4j2pLP5UwB0Fot19zbY+
 CeFJnIzemHzVOTKXM4FjYUa8Db1dCAjpGVzBqlDpGovjsHidz4UoMr1n78/nWJD9DLiGlfdzNRrHN
 V0rLdVEVNItRt9J4UxHxaz6gnkuVHoTgjqcXIiaSbcy+8EHCkyjsa1EGmEStx+2YIeAE=;
Received: from wout2-smtp.messagingengine.com ([64.147.123.25])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rTAqO-00009f-N8 for linux1394-devel@lists.sourceforge.net;
 Fri, 26 Jan 2024 01:17:22 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailout.west.internal (Postfix) with ESMTP id 7DD343200B41;
 Thu, 25 Jan 2024 20:17:10 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute2.internal (MEProxy); Thu, 25 Jan 2024 20:17:10 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1706231830; x=
 1706318230; bh=NSUtvtTjYwwuiOYW6ivK/yDR8H8fHOXmVMuUGxG4x4c=; b=d
 kMvJmvUBNf7BBj7amriyJXpzwyR4shoaak+anrX8b4515ajQ4jZ8L6exHkKp9gqY
 l6VBDHxjaFcoIE+FDcXyforh+nwUlyEUYH3vBAKqzj/61UBxKjaZAozhdRIE+Hwj
 BQ3KNXvDviSJnb58cX+g6uWKEuFbYSLSafLa2nffaAbQf5Gu3W90mzVDOX+SI442
 UESrZwqAaMAoRE49ubf69dJl0BPWtxU5I9nOr9s3XPzAW7qn6nGBJyVUAQPaJQCi
 9cFRIzBDI41HQpqRA+FjW6n4Z5yHfs1KjsIZDKWG6XycSkK0fU6M48cWXfcspKsE
 /egJC8Z41BML6nFcCVLig==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1706231830; x=1706318230; bh=NSUtvtTjYwwuiOYW6ivK/yDR8H8f
 HOXmVMuUGxG4x4c=; b=YBLC/h9OW3Kzh3Yrg2M7plTXJtmu3V6wLbjsU8J/jYL0
 ycZ3cyiHqQreM7efZOlkAXHaK30/rhwfQ72oA6nz9nNAByff2dNrqiCDssttlPMj
 2JoBLhVgOsE6ErcJIjpNw54xjzvU5STCulhK7MxJywIAireI9RuYS+t7sCC0JRx+
 iIbO2vVDoUJ8hYqQjXAiUfQEmEVevMhqWIIV8jr9MattWrRIDQRjn0+tjHuMpiyU
 cDrTmxoXgY4O6eizU7jD0Lm4QX7VR3+0Dgu/yKv/WLjV06/25OXd5Ns6gIc4axoM
 +z7Pk08kndJxXtb43OJrtgiJLG0sYjbXxRBarfkvAg==
X-ME-Sender: <xms:FQizZbKPDLVXfeHm1ui9VyaekzXj6z6DN149dkdTwXtJRCoktAODBA>
 <xme:FQizZfI2gXstDd0rkXdqZo6_uvmmWfvy6esYVNV-njdt_Ijo_PAgcGDtM3Hu1pshg
 9fWSbOvHH7dDc8qibM>
X-ME-Received: <xmr:FQizZTsp2id9SDSn8sCTiSvKF-LERTn8KVXytEBbkrwuazOT4AwQwPJcGWjBftx2e87bHdh8El-hVAH-zSWAvQwqQq5LvlMt5a8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrvdeliedgfeduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepvfgrkhgr
 shhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhird
 hjpheqnecuggftrfgrthhtvghrnheptdeiueegkeffheeuvefhvdevveekvefhveegfffg
 tdekuedvudeludegvddtuedvnecuffhomhgrihhnpegrrhgthhhivhgvrdhorhhgpddufe
 elgehtrgdrohhrghdpghhithhhuhgsrdgtohhmnecuvehluhhsthgvrhfuihiivgeptden
 ucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggthh
 hirdhjph
X-ME-Proxy: <xmx:FQizZUb8NWo05EM_oUjz96649sTIU_GkvAROynMJlRSFxf_tTkHP-g>
 <xmx:FQizZSYSbzon86k00JRM3vs8iZKpK9TSCG2EET9Tjg1Jr2_ISx7cIQ>
 <xmx:FQizZYB6h9sGEGH43J64E__WrNspNf061fOuIpcJtVZgfFd14XWe4A>
 <xmx:FgizZVwKGkRpd3s-C5Izp8RP4NrLmtPHou2ha46NUkCFGqgW6Te4PA>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 25 Jan 2024 20:17:08 -0500 (EST)
Date: Fri, 26 Jan 2024 10:17:05 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Adam Goldman <adamg@pobox.com>
Subject: Re: [PATCH] firewire: core: mask previous entry's type bits when
 looking for leaf
Message-ID: <20240126011705.GA22564@workstation.local>
Mail-Followup-To: Adam Goldman <adamg@pobox.com>,
 linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org
References: <ZbJQ0JdbGixJouvn@iguana.24-8.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZbJQ0JdbGixJouvn@iguana.24-8.net>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Thu, Jan 25, 2024 at 04:15:12AM -0800, Adam Goldman
 wrote: > When searching a configuration ROM directory for a leaf corresponding
 to > a specific key_ID, disregard the type bits of the directory e [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rTAqO-00009f-N8
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

On Thu, Jan 25, 2024 at 04:15:12AM -0800, Adam Goldman wrote:
> When searching a configuration ROM directory for a leaf corresponding to 
> a specific key_ID, disregard the type bits of the directory entry.
> 
> The configuration ROM of FireWire devices can contain textual descriptor 
> leafs (strings) for vendor name and model name. We use these to populate 
> the vendor_name and model_name entries in sysfs. Each descriptor leaf has a 
> descriptor directory entry pointing to it. The identity of the descriptor 
> leaf is indicated by the key_ID of the directory entry immediately before 
> the descriptor leaf's directory entry. The key_ID is the low 6 bits of the 
> high byte of the directory entry, and the type is the high 2 bits.
> 
> In most cases, the directory entry before a descriptor directory entry will 
> be an immediate value (type=0). However, it is also valid for it to be a 
> directory (type=3). Thus, when looking for a specific leaf, we must mask 
> off the type bits and compare only the key_ID.
> 
> One affected device is the Sony DVMC-DA1, which is missing the vendor_name 
> sysfs entry without this change.
> 
> The recent commit 141d9c6e003b806d8faeddeec7053ee2691ea61a fixed missing 
> model and model_name entries for the DVMC-DA1, but those were caused by a 
> different issue.
> 
> Signed-Off-By: Adam Goldman <adamg@pobox.com>
> ---
> 
> --- linux-6.8-rc1.orig/drivers/firewire/core-device.c	2024-01-21 14:11:32.000000000 -0800
> +++ linux-6.8-rc1/drivers/firewire/core-device.c	2024-01-24 03:56:56.000000000 -0800
> @@ -72,7 +72,7 @@
>  
>  	fw_csr_iterator_init(&ci, directory);
>  	while (fw_csr_iterator_next(&ci, &key, &value)) {
> -		if (last_key == search_key &&
> +		if ((last_key & 0x3f) == search_key &&
>  		    key == (CSR_DESCRIPTOR | CSR_LEAF))
>  			return ci.p - 1 + value;

Would I request you to update the API documentation of fw_csr_string()
as well and send the renewed patch as take 2?


I have a mixed feeling about the change, but I'll finally accept it since
we face the exception against documentation.

As you know, in Annex A of document for configuration ROM of AV/C
device[1], we can see the legacy layout of configuration ROM (page 22).
In the layout, the descriptor leaf entry for vendor name locates after
the immediate value entry for vendor ID, then the directory entry for
vendor directory locates. However, in the case of Sony DVMC-DA1, the
descriptor leaf entry locates after the directory entry. It is an
exception.

The change brings the behaviour change of fw_csr_string() since it is
currently coded to pick up the text pointed by the descriptor leaf entry
just after the immediate value entry. Fortunately, as long as I know, the
change is safe and brings no regression.

In the concept of software stack in kernel, whether the string is picked
up or not is not so important, since it is just for human readability.
It is just enough to pick up information to detect the relationship
between node and unit and their corresponding drivers. The parse of
configuration ROM should be done in userspace application again.
Actually the most of userspace applications are programmed so.

In the case of systemd udev/hwdb, it is not so preferable to put
device-dependent code, therefore the device attributes are important in
our case. But the vendor string provided by the stack is not necessarily
useful since hwdb can fulfill it now[2].

... But the above are just theories. The world has many complicated
things, I know. So I accept your proposal. But note that the preferable
way is to find the other devices which have the configuration ROM similar
to the case. We have already implemented the support for the legacy layout
of configuration ROM. It's time for you to start collecting the
configuration ROMs for digital video devices, like I did for audio and
music units in IEEE 1394 bus[3][4].

[1] Configuration ROM for AV/C Devices 1.0 (1394 Trading Association, Dec 2000,
TA Document 1999027)
https://web.archive.org/web/20210216003030/http://1394ta.org/wp-content/uploads/2015/07/1999027.pdf
[2] https://github.com/systemd/systemd/pull/31054
[3] https://github.com/takaswie/am-config-roms/
[4] https://github.com/systemd/systemd/blob/main/hwdb.d/80-ieee1394-unit-function.hwdb


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
