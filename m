Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A1BB084C0F9
	for <lists+linux1394-devel@lfdr.de>; Wed,  7 Feb 2024 00:39:14 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rXV1l-0004Hj-GN;
	Tue, 06 Feb 2024 23:38:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rXV1i-0004Ha-Nj
 for linux1394-devel@lists.sourceforge.net;
 Tue, 06 Feb 2024 23:38:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9lnv92XPZMe9+5e06+LHKt+jj5D0C7RYADZtxhimSCw=; b=S1f1Lg0UNHW8NiWt/Fk5oqhFZO
 vBLlAS1W3cULfTA+PYKl23Pgdo7YOnZzxSJvTjmXwiK2SoNBwZ04d8jNZHeHSQLgaOwJFbWjf8h4J
 gcfPB32xUB9d4sY7ZTjyei2eUpgNnwkM30s7nPS6RtjGv25tsFVb8TYrxw4RyQ7ndkuU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9lnv92XPZMe9+5e06+LHKt+jj5D0C7RYADZtxhimSCw=; b=CRBW9TRtF9/OipW+23mSoetVtF
 hoN9LMSvMyL/4uFabM5/jKUlDOr6zdyREg6JwLfr9VqF+vHdOTNhGJzb1kHCohKy5G+H0p2OmE2Zs
 Q08mUNgFXQJWq4gB8JUuXFEE3LWbf1hi82luVzwNNFHJ7Pq8z5NbA4GtCgnYYjPTJgxU=;
Received: from wout4-smtp.messagingengine.com ([64.147.123.20])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rXV1h-0007J9-8A for linux1394-devel@lists.sourceforge.net;
 Tue, 06 Feb 2024 23:38:55 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailout.west.internal (Postfix) with ESMTP id 34F7D32003D3;
 Tue,  6 Feb 2024 18:38:48 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute2.internal (MEProxy); Tue, 06 Feb 2024 18:38:48 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1707262727; x=
 1707349127; bh=9lnv92XPZMe9+5e06+LHKt+jj5D0C7RYADZtxhimSCw=; b=c
 77fCKQoDO0iyjhxwOwyJq0VZOoWwbg8IqQJ9D8vfcIDVtlMf/h5OTAeautVvRNvq
 swlOg1E2zJeNTtDhxsOnJ2JtDn4ngS1B/DqWmwFAJQOL7Hk5NWObjGvFLpAyb97b
 ZFjwpLvzPJd2bH4PvepaYU9AU9vFsuEursWeoZeYt2TwdU8lJLWVAHr7Oz8psHGP
 QodM8O+HDZwmFrSK/GNAwdpmsPP4ZLJjblLa8ctHn1i1NUiAyl8ddZBtyQagNmYD
 G52vOZcPgVa7H8BM63xBfaLKADT7n7UwLGiKE/mW+uTj0aRuA93J1frKQ6fR+odN
 XrpLW9ndZpQENCwox00Yg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1707262727; x=1707349127; bh=9lnv92XPZMe9+5e06+LHKt+jj5D0
 C7RYADZtxhimSCw=; b=M1y/xNYfryX50WqA4OmrgnB5g5HY9GlW7pUAYBsCCGXu
 hPif8c9EtT0FMbAGBNmnqsf12qKhGPJLb/SvdeRFNpa4WLCE3YfcBxNW77OzTJD4
 IWrH8fslGe4x39EYeXs/+6cM1qbjUMinfEJPn47/IdkFbf7DZn6Z157aoA03K79K
 dpVr3HNyNSMx+n+c7Urn4dt/8MUZAqbpT9TCWMv+CtGc+S6WFMNU+UPM3kiTDCLq
 1kDL5vfp1D47DfqZgw5TUaDqYr5EQhYGVuq2eVU+ImAQOq05TTC4IXLcBFjA8lke
 L+jWuLDxffedu0K1rix9tCYG3MmCs/8i9RLUU39amw==
X-ME-Sender: <xms:B8PCZdJpr2yMKKcqsntMgiZnjcn92Kt1CLL2o6RbTYw3sUUGzILzlA>
 <xme:B8PCZZLWUNEhiLoz7UzyQMnsZxCZOX5bmP1hrC8mMvJN1IJ2vOhY1G1kURtMHc0gy
 zwNWQqrSsNHOpudsbY>
X-ME-Received: <xmr:B8PCZVvgKiL3GvMXwteLB4vtAq7TnEDUhHC2x656S0E-2cK6aPNJdb-5j1JlWYtSqMDZPxocLUv4FRU07fEPrklcyN1R_6o1FY4>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrtddugdduvdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenog
 fuuhhsphgvtghtffhomhgrihhnucdlgeelmdenucfjughrpeffhffvvefukfhfgggtuggj
 sehttdertddttddvnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqd
 htrghkrghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeej
 hffhgeeutefhfeeugfeggeduhfekffduhffhheekhfdtveefhfejjefftdfgjeenucffoh
 hmrghinhepshhouhhrtggvfhhorhhgvgdrnhgvthenucevlhhushhtvghrufhiiigvpedt
 necurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrghkrghmohgttg
 hhihdrjhhp
X-ME-Proxy: <xmx:B8PCZea0mhQFALGGu4uA1fQfGUV5SwliAjpywnC6USlnjm1oAOHsOQ>
 <xmx:B8PCZUZusTh6ZgVOzn74lH1mHhlELeuP-l-9X-hNywPghVvx9xUdpA>
 <xmx:B8PCZSB0DWrDVft2cRIgPnsytTk_hx6AMOxqmFbBMWZSb_k5jyyC1Q>
 <xmx:B8PCZfw24dhyiWCGA5McGUGNdux47HfQg5pVBTUIFh9MHSA1qekRuQ>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 6 Feb 2024 18:38:46 -0500 (EST)
Date: Wed, 7 Feb 2024 08:38:44 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Adam Goldman <adamg@pobox.com>
Subject: Re: [PATCH v2] firewire: core: send bus reset promptly on gap count
 error
Message-ID: <20240206233844.GA143470@workstation.local>
Mail-Followup-To: Adam Goldman <adamg@pobox.com>,
 linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org
References: <ZcBwSuyYtPEqwk8Y@iguana.24-8.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZcBwSuyYtPEqwk8Y@iguana.24-8.net>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, Thanks for the patch. I applied it to for-linus branch
 and will send it for v6.8-rc4 in this week. Thanks for your long patience
 in the review process. On Sun, Feb 04, 2024 at 09:21:14PM -0800, Adam Goldman
 wrote: > If we are bus manager and the bus has inconsistent gap counts, send
 a > bus reset immediately instead of trying to read the root node's [...]
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [64.147.123.20 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rXV1h-0007J9-8A
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

Thanks for the patch. I applied it to for-linus branch and will send it
for v6.8-rc4 in this week. Thanks for your long patience in the review
process.

On Sun, Feb 04, 2024 at 09:21:14PM -0800, Adam Goldman wrote:
> If we are bus manager and the bus has inconsistent gap counts, send a 
> bus reset immediately instead of trying to read the root node's config 
> ROM first. Otherwise, we could spend a lot of time trying to read the 
> config ROM but never succeeding.
> 
> This eliminates a 50+ second delay before the FireWire bus is usable after 
> a newly connected device is powered on in certain circumstances.
> 
> The delay occurs if a gap count inconsistency occurs, we are not the root 
> node, and we become bus manager. One scenario that causes this is with a TI 
> XIO2213B OHCI, the first time a Sony DSR-25 is powered on after being 
> connected to the FireWire cable. In this configuration, the Linux box will 
> not receive the initial PHY configuration packet sent by the DSR-25 as IRM, 
> resulting in the DSR-25 having a gap count of 44 while the Linux box has a 
> gap count of 63.
> 
> FireWire devices have a gap count parameter, which is set to 63 on power-up 
> and can be changed with a PHY configuration packet. This determines the 
> duration of the subaction and arbitration gaps. For reliable communication, 
> all nodes on a FireWire bus must have the same gap count.
> 
> A node may have zero or more of the following roles: root node, bus manager 
> (BM), isochronous resource manager (IRM), and cycle master. Unless a root 
> node was forced with a PHY configuration packet, any node might become root 
> node after a bus reset. Only the root node can become cycle master. If the 
> root node is not cycle master capable, the BM or IRM should force a change 
> of root node.
> 
> After a bus reset, each node sends a self-ID packet, which contains its 
> current gap count. A single bus reset does not change the gap count, but 
> two bus resets in a row will set the gap count to 63. Because a consistent 
> gap count is required for reliable communication, IEEE 1394a-2000 requires 
> that the bus manager generate a bus reset if it detects that the gap count 
> is inconsistent.
> 
> When the gap count is inconsistent, build_tree() will notice this after the 
> self identification process. It will set card->gap_count to the invalid 
> value 0. If we become bus master, this will force bm_work() to send a bus 
> reset when it performs gap count optimization.
> 
> After a bus reset, there is no bus manager. We will almost always try to 
> become bus manager. Once we become bus manager, we will first determine 
> whether the root node is cycle master capable. Then, we will determine if 
> the gap count should be changed. If either the root node or the gap count 
> should be changed, we will generate a bus reset.
> 
> To determine if the root node is cycle master capable, we read its 
> configuration ROM. bm_work() will wait until we have finished trying to 
> read the configuration ROM.
> 
> However, an inconsistent gap count can make this take a long time. 
> read_config_rom() will read the first few quadlets from the config ROM. Due 
> to the gap count inconsistency, eventually one of the reads will time out. 
> When read_config_rom() fails, fw_device_init() calls it again until 
> MAX_RETRIES is reached. This takes 50+ seconds.
> 
> Once we give up trying to read the configuration ROM, bm_work() will wake 
> up, assume that the root node is not cycle master capable, and do a bus 
> reset. Hopefully, this will resolve the gap count inconsistency.
> 
> This change makes bm_work() check for an inconsistent gap count before 
> waiting for the root node's configuration ROM. If the gap count is 
> inconsistent, bm_work() will immediately do a bus reset. This eliminates 
> the 50+ second delay and rapidly brings the bus to a working state.
> 
> I considered that if the gap count is inconsistent, a PHY configuration 
> packet might not be successful, so it could be desirable to skip the PHY 
> configuration packet before the bus reset in this case. However, IEEE 
> 1394a-2000 and IEEE 1394-2008 say that the bus manager may transmit a PHY 
> configuration packet before a bus reset when correcting a gap count error. 
> Since the standard endorses this, I decided it's safe to retain the PHY 
> configuration packet transmission.
> 
> Normally, after a topology change, we will reset the bus a maximum of 5 
> times to change the root node and perform gap count optimization. However, 
> if there is a gap count inconsistency, we must always generate a bus reset. 
> Otherwise the gap count inconsistency will persist and communication will 
> be unreliable. For that reason, if there is a gap count inconstency, we 
> generate a bus reset even if we already reached the 5 reset limit.
> 
> Signed-off-by: Adam Goldman <adamg@pobox.com>
> Link: https://sourceforge.net/p/linux1394/mailman/message/58727806/
> ---


Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
