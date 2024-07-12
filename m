Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 199AC92F2FE
	for <lists+linux1394-devel@lfdr.de>; Fri, 12 Jul 2024 02:25:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sS46E-0003VX-F9;
	Fri, 12 Jul 2024 00:25:21 +0000
Received: from [172.30.29.67] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sS46D-0003VP-3A
 for linux1394-devel@lists.sourceforge.net;
 Fri, 12 Jul 2024 00:25:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4GIBJYxkr7iWUZFxwzxEuQ91x/vyXdkRozSaihbY1tU=; b=LY7kgh8UDrFZFoDALCfBL2+p0E
 6GiyFeMXOBysDfLRM8MmeynUK0E1/2n6aSiY9P6lpia8upEYL2T8MZ/nLdIJNj+eSV+eyFeWTT/UU
 vAw37eOqTHCT1M1sEHRNtKnBqcM6OFY061lXSfcSbwxYCi6elKbFhbi1RBhUScH2XGRY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4GIBJYxkr7iWUZFxwzxEuQ91x/vyXdkRozSaihbY1tU=; b=C2BRpUxSHUeh91OguuLKZmbi+b
 x/a03uYU1abuTlXRmkREvySdn/G6Ij0OgZVwZyR9oyodmJuknCocxBbhQ3BhTYeqW+prI9imEOK0v
 Nejcc2+VFd/m75dtz1bMqdEpRC5O3+92xJBvwKU5dAkRwSAt6DGkmD3YN8ZNa7cUrk9U=;
Received: from fhigh1-smtp.messagingengine.com ([103.168.172.152])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sS46C-0007fl-HO for linux1394-devel@lists.sourceforge.net;
 Fri, 12 Jul 2024 00:25:20 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id 28ABE1140FE1;
 Thu, 11 Jul 2024 20:25:09 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Thu, 11 Jul 2024 20:25:09 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1720743909; x=
 1720830309; bh=4GIBJYxkr7iWUZFxwzxEuQ91x/vyXdkRozSaihbY1tU=; b=i
 2n41sSURasjd1O2Df8RVWZoABre5Wh0zTpRKFh2gU5dSc3I/RCE1khmhfJ2xB/nd
 z5IyGw6m8Ev5axVmBkBDlWew8o+RBXg2yI++Z2IPrqQjpZTn8yuFy9SlHmImMD+Z
 0jwiafgdwsA1ruLD8+wyn0n1MHjiAGWHtDvww3CldhAERght7mCVsWCuhiVRYbB3
 +4v5gq3F+PVmGul5nAUZWSbMVTp/OQuPfZJOVoUhWYtyNI+6RlWd+FhfP1rSdef4
 1MU+lttAhqH/SPR+BAb7tQgDpTXuyBMw53idZ2JEAenTVGwe0pACu00HGjF5gPiG
 ldwGIqdcJQcTrqyS9CeLA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; t=1720743909; x=1720830309; bh=4GIBJYxkr7iWUZFxwzxEuQ91x/vy
 XdkRozSaihbY1tU=; b=BSQoHoBNfPTdSbT+NZOlJ58LAUFYZcUh4Nn8db1qLgeH
 OWe0xb6GE8qkdKE58/vNqabyrrrfIfbiBeAs5G5d2HgpFhxUP12MsyX86IPCxEQH
 lE3/5f+o60onPzuJD0IBAGRaxJWStgvXJuHB2e0Sv+QrcWY9ngVkQCpjZrL8V3is
 8zzL5EPsiixbb6EC1CcPkeYOTQSna98MXITIBrKegbEliuiEPduTNDdGAxtPN2dD
 elSRJw6DIyW9DZT1GFlbPMDwWAfB9poX7UOHAm4SMVrFtA16qXSQP51CVrIcOZ4c
 pbnVYUs4rxGZr9/GKTjX19ojgq3MLlHVAlikjYIpfQ==
X-ME-Sender: <xms:43eQZtWiuw53Gwi_WhQZfwzgrCNP_xPXURNJqRMU0YecVQnhlS8XZw>
 <xme:43eQZtnOgfSNjeM3Pj26tNltmo16QtpftS0RxyBI0kIdqoC2EBmcbDygMpOPNxL7f
 nGAYA-P3uEfL6geafQ>
X-ME-Received: <xmr:43eQZpZgiJCKEM84nH03tNsT02jkUyRcJvS_KstkG7a1mLKorW4Z4TMkc4-nVg8aQhghm8Vl6uiwbn9ztLawftNCK-wDV8iJm0Uq>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrfeehgdefiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvfevuffkfhggtggujgesthdtre
 dttddtvdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhephefhhfette
 fgkedvieeuffevveeufedtlefhjeeiieetvdelfedtgfefuedukeeunecuvehluhhsthgv
 rhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihessh
 grkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:43eQZgVQA3THE1ZW4vj6GkPADMCCKwPdf88NSEge8wHp7PFoYoeCng>
 <xmx:5HeQZnlULbb0w90TxG7uUtYnLRGcGpVkgIsdXF5cSTC4ueUa_Ul7Fw>
 <xmx:5HeQZtdJpJk6GW3mtt_CQfg29_MQtUgGeILQ51LRZsJD4N1_mzZZZQ>
 <xmx:5HeQZhEsHPzGozUieUgEk-gBpDJIZQrk9gQO9_2tRzxL2QYQtp7Brw>
 <xmx:5XeQZswXl7yZe_daoV3kgUt5YwzRj9PrwVyAlvLFzXUdO-KsEbKyf81y>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 11 Jul 2024 20:25:07 -0400 (EDT)
Date: Fri, 12 Jul 2024 09:25:05 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH] firewire: core: move copy_port_status() helper function
 to TP_fast_assign() block
Message-ID: <20240712002505.GA86058@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <20240712000424.85124-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240712000424.85124-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Fri, Jul 12, 2024 at 09:04:24AM +0900,
 Takashi Sakamoto
 wrote: > It would be possible to put any statement in TP_fast_assign(). >
 > This commit obsoletes the helper function and put its statements [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.152 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.152 listed in bl.score.senderscore.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [103.168.172.152 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1sS46C-0007fl-HO
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
Cc: linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

On Fri, Jul 12, 2024 at 09:04:24AM +0900, Takashi Sakamoto wrote:
> It would be possible to put any statement in TP_fast_assign().
> 
> This commit obsoletes the helper function and put its statements to
> TP_fast_assign() for the code simplicity.
> 
> Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
> ---
>  drivers/firewire/core-trace.c   | 11 -----------
>  include/trace/events/firewire.h | 12 ++++++++++--
>  2 files changed, 10 insertions(+), 13 deletions(-)

I realized that the prototype of helper function still exists in
'include/trace/events/firewire.h'. Let me abandon this patch and
resend the revised version.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
