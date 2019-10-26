Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EC317E5D8D
	for <lists+linux1394-devel@lfdr.de>; Sat, 26 Oct 2019 15:56:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1iOMY2-0008LG-C5; Sat, 26 Oct 2019 13:56:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1iOMY1-0008Kt-5n
 for linux1394-devel@lists.sourceforge.net; Sat, 26 Oct 2019 13:56:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=itAcq9nK7jLqjzjTkv1VIE95ydJmOkh2X9BcOQZM0xc=; b=a/Cbzr6qQlE+G/RkVJHLrhYQ3B
 Eovhx9+SNcK5mAsTB2IZGkHH12TcPmhmUMgM0yCy7COnmyuO+2fweoHzxcT0/gdUJ+dNArOBSbw7Z
 aquFMu9apOgkTJ3hlnB4K2RLVl9fhCgg5fG9FCRIfYf5hHBItqrPKt7qNBvVnnPxkxMU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=itAcq9nK7jLqjzjTkv1VIE95ydJmOkh2X9BcOQZM0xc=; b=Yeum6AlnRkEu2p47jLeTGBTi6K
 H2vfDyXOiO9DpJVFxHV0wuZCOUcdXxyggHxEi+ifDCGyf2vvz4u6+MUwhrYEhGuypuyjK0iJ0XFhe
 7CyEpZ3ZTVFd9eHaDeEUCwzPNTftz4cbG2wNmgln9AvXtxH1hR95n/eo/uZ9kbmyzPxs=;
Received: from wout3-smtp.messagingengine.com ([64.147.123.19])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iOMXx-0044sV-IC
 for linux1394-devel@lists.sourceforge.net; Sat, 26 Oct 2019 13:56:05 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailout.west.internal (Postfix) with ESMTP id 58D1D45C;
 Sat, 26 Oct 2019 09:37:44 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Sat, 26 Oct 2019 09:37:44 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=itAcq9nK7jLqjzjTkv1VIE95ydJ
 mOkh2X9BcOQZM0xc=; b=jw1zgEUQOm9CNKk1krcFTxYuF7tDIEReNcCGo9Jcsq1
 hEcl8TU6fW7ygaiamCnBJzIgAwhDYTsBQ1UNHb7wy4BohtTCmvpQXKnYbWBmLb0f
 Yuy1DE++Ko42EwHNpbwoOrN3BeXxKn0U0s/G05hFhWgcMbnOjPCU6yZC/W2MpoIq
 AiDorJn7gtoHaEJ/teIipU4+cryvQdRstFRBN0sCqfFJWfUj/C43WQZNDh3aFjbQ
 TzcqTUGTs0XHJ+204FDuofVXdxBOcKvmeMVsO8YlQYTQ/2PKNmoPhfkGw+A2wQKt
 08rleM8w9NEMNMpcpqHCs3c9aUgwDlBv0Ma1R5jYviA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=itAcq9
 nK7jLqjzjTkv1VIE95ydJmOkh2X9BcOQZM0xc=; b=UprdBL80X74w1zlQb0anVY
 88y9XLOnHtrjrjxnSR0+YRU9HycVdM3ZJLHk6QsfykHQl0lhE3VdXD/c4HJZf47j
 ycv+AReWtktpIbBjBkMVVirAnV+LefYzNekYnPySW4wLNTtieSm/yCkIQe+IF/r8
 XXBmsTqtixvST1+CDWv0XzISUUEztXqE3SHfuyVN8/d0brDKumraDX36c5CwmJkK
 DiwHx/v1PkstZHtRDSUJcGAJBdV+c1jQXH9iO2uezXTqsrKEUJXNaFQGVQAIPKK1
 fhVHSNwlZVu2vhIOkfNAJPvvVvw6LnL/XFYxLrT8rmVaoLYnuYgN7WCP8H5Wsgvg
 ==
X-ME-Sender: <xms:J0y0XV0z8y2smsFbLWRvJDL72UED9lg_yqyx7P22YbNF0s_MTcZShQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrleehgdeilecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjfgesthdtre
 dttdervdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjpheqnecukfhppedugedrfedrjeehrddukedune
 curfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrghkrghmohgttghh
 ihdrjhhpnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:J0y0XUrBNm3Zpcsux-y7JPJGuaJdMLSEsVfZynHzu3ktKCSkffpo_w>
 <xmx:J0y0Xc9sKqvP-De1Zo-RA47svMPk4_nV6sPQTbfQOump0XQ4YFOZOg>
 <xmx:J0y0XX6reezHosJzSkSn6bwEh85yLFOPtXztDx4Qx-0JAcAw1O843g>
 <xmx:J0y0XRR2T2-uqb8EKXMRQt4iKc50ES6fXOsHtI428OZgB17E2ni4Ww>
Received: from workstation (ae075181.dynamic.ppp.asahi-net.or.jp [14.3.75.181])
 by mail.messagingengine.com (Postfix) with ESMTPA id 3F0CF8005A;
 Sat, 26 Oct 2019 09:37:42 -0400 (EDT)
Date: Sat, 26 Oct 2019 22:37:39 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Forest Crossman <cyrozap@gmail.com>
Subject: Re: [PATCH] firewire: ohci: Fix misc. spelling/whitespace issues
Message-ID: <20191026133738.GA13506@workstation>
Mail-Followup-To: Forest Crossman <cyrozap@gmail.com>,
 linux1394-devel@lists.sourceforge.net, stefanr@s5r6.in-berlin.de
References: <20191026082029.10358-1-cyrozap@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191026082029.10358-1-cyrozap@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iOMXx-0044sV-IC
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

Hi,

On Sat, Oct 26, 2019 at 03:20:28AM -0500, Forest Crossman wrote:
> These are just some inconsequential spelling and whitespace issues I
> found while studying the driver.
> 
> Signed-off-by: Forest Crossman <cyrozap@gmail.com>
> ---
>  drivers/firewire/ohci.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
> index 522f3addb5bd..50d49dc09d69 100644
> --- a/drivers/firewire/ohci.c
> +++ b/drivers/firewire/ohci.c
> @@ -448,7 +448,7 @@ static const char *evts[] = {
>  	[0x0c] = "-reserved-",		[0x0d] = "-reserved-",
>  	[0x0e] = "evt_unknown",		[0x0f] = "evt_flushed",
>  	[0x10] = "-reserved-",		[0x11] = "ack_complete",
> -	[0x12] = "ack_pending ",	[0x13] = "-reserved-",
> +	[0x12] = "ack_pending",		[0x13] = "-reserved-",
>  	[0x14] = "ack_busy_X",		[0x15] = "ack_busy_A",
>  	[0x16] = "ack_busy_B",		[0x17] = "-reserved-",
>  	[0x18] = "-reserved-",		[0x19] = "-reserved-",
>
> @@ -1281,7 +1281,7 @@ struct driver_data {
>  };
>  
>  /*
> - * This function apppends a packet to the DMA queue for transmission.
> + * This function appends a packet to the DMA queue for transmission.
>   * Must always be called with the ochi->lock held to ensure proper
>   * generation handling and locking around packet queue manipulation.
>   */
> -- 
> 2.20.1

This patch looks good to me. The following white space is exactly
superfluous.

firewire_ohci 0000:0b:00.0: AT spd 2 tl 26, ffc1 -> ffc0, ack_pending , BW req, fffff0000b00 8,0
firewire_ohci 0000:0b:00.0: AR spd 2 tl 26, ffc0 -> ffc1, ack_complete, W resp


Reviewed-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
