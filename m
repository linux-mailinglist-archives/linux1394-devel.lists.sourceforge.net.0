Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4720DB87661
	for <lists+linux1394-devel@lfdr.de>; Fri, 19 Sep 2025 01:46:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WHFguGV/GLu3TxgikiHaj2lYsaFbJ0kCkeqQJhmJ6YY=; b=hpztdyTH5sp2Dw/R10J9MOQuaJ
	Bk1GaodlTlwtfABW0yuGVUDeiLBgPMvl+D0L3U00QEtYUD2/7lkOtnk7durlRgUlYzMh3YQZxT52Y
	QoUwd91lcPQZCypQ4fSNnQ1k9sq6DsO4E/2WoNoJS9PPSx6YVMS1gd5rH0Js+a756Cjo=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uzOKc-00088Q-V7;
	Thu, 18 Sep 2025 23:46:30 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uzOKb-00088I-R3
 for linux1394-devel@lists.sourceforge.net;
 Thu, 18 Sep 2025 23:46:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sWsEZtX/uvsijDe9n8yAt9hLHijgKIaNN7Dlpi/+8Z4=; b=StcozFVRlnHu6uTRl3PcFwPKU+
 yqKijU6D16FaelasmCBalpXx+50cEK1yKQjkorkVlAyErMPirlK2k8WSdqgkKR+LEZHn4nXlNuBet
 LlAmeGvJPuF8QOBgiKZKNf1bRegcDZrZISUBLvWq8ogAs1MAYzj6xWwHGXRYBUtT+Hak=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sWsEZtX/uvsijDe9n8yAt9hLHijgKIaNN7Dlpi/+8Z4=; b=U8wSLvG282jFk9PWl0eV4DZe3e
 REz4jY/iG24p3Iufez3UdsreSp9dbhonzlTAQAAwEqRWtruTIxjbUVp1fCPcLWuoeLbbxMhF3WTX+
 hzT1qO5ml8yhaIha76rjQhrVgKDnn6DqquRWp3YmEC7ZQ+ibdvVZZkmeqj7KOn5+CsUk=;
Received: from fout-b1-smtp.messagingengine.com ([202.12.124.144])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uzOKb-00030K-5L for linux1394-devel@lists.sourceforge.net;
 Thu, 18 Sep 2025 23:46:29 +0000
Received: from phl-compute-02.internal (phl-compute-02.internal [10.202.2.42])
 by mailfout.stl.internal (Postfix) with ESMTP id 97A0D1D002BA;
 Thu, 18 Sep 2025 19:46:23 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-02.internal (MEProxy); Thu, 18 Sep 2025 19:46:23 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1758239183; x=
 1758325583; bh=sWsEZtX/uvsijDe9n8yAt9hLHijgKIaNN7Dlpi/+8Z4=; b=K
 ntxePmEWuYrbO+uzZx+Ox0o9w36HsHuJlFo6DzPuODhX6zv61rUbK+ILGZcHguHV
 Snsp1coFmghQbXqWhJJik/qei4A+cqx0knxfRrnELrzSIJHaRTg0ZoIxJ2V2xdft
 EFRVpTJh+ukUbvXX/044BDfwQjF5cVglprUmAd6kWY9l3shTYrpAH8y/Pfqk1jyR
 sIsZhfwQOozehxyXkMLDJfXHthscg+EuVhy2j69AXYhI+QJiBnV+OLn5SiNHUXC0
 jJYfpDFjXM4oAK+1TR3clslGmUnnDXXNP4OB0uA/HnTCgeK9hkPeLzIUx6kHiIee
 yFEaZ+748Gict5cPIV31Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
 1758239183; x=1758325583; bh=sWsEZtX/uvsijDe9n8yAt9hLHijgKIaNN7D
 lpi/+8Z4=; b=O8m50MwFhGBzbf9tHv76nzB2l/yI/pHnZvt8NLlDjtZB+VDwyHK
 5j3bI6nalh434GOksdKx5OGYC+MaKAu9XmUl/YMUwOl7xn2resMzFWpqegBXDZ1g
 Cr1cJc4ZrbR7XpoyHeHcQuvyBgg+AeW80JbOIsgrX6NixcY+1aVodbeUjU+KFXV+
 Z7kf0OU1PJBzE3mGbz1K8oPIXGq2AS7zPBdSMzbhN3UbujG+2+WHZhbgBB6ETS6W
 3e714+Z1zbDDvS4EqQPV1vnO9CEIHHkqfFFRn/xkENCHyfs6/s9BpNGCvrGUip+M
 kJgs0bHUY1NqgBmdcMgx4MJEroC9m5eT1Xg==
X-ME-Sender: <xms:z5nMaH64xwhQX4Vz3PAJXvKYLbayJJpDKHHhaeNIEyKOZnvh0mjdtA>
 <xme:z5nMaF0_uW4kCBYXij4EUzHDCtFEJMTIhbsP2jBrRD1L78m8L3diQxQZWcmLINi31
 JstlHOg2bNiDWfm2uE>
X-ME-Received: <xmr:z5nMaAZ0IUHx1RRipb9QOjtDisZi50OJ1vji8IsAeNJ5ao_KPf0hJfKhsAhOIoq9LlZKiJ3lBVbfW-59wsEomEbstNn-_XF0Pe1d>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdegjeeilecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
 ihhlohhuthemuceftddtnecunecujfgurhepfffhvfevuffkfhggtggujgesthdtredttd
 dtvdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhh
 ihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhephefhhfettefgke
 dvieeuffevveeufedtlefhjeeiieetvdelfedtgfefuedukeeunecuvehluhhsthgvrhfu
 ihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkh
 grmhhotggthhhirdhjphdpnhgspghrtghpthhtohepvddpmhhouggvpehsmhhtphhouhht
 pdhrtghpthhtoheplhhinhhugidufeelgedquggvvhgvlheslhhishhtshdrshhouhhrtg
 gvfhhorhhgvgdrnhgvthdprhgtphhtthhopehlihhnuhigqdhkvghrnhgvlhesvhhgvghr
 rdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:z5nMaFB9mM4EOUpklYaEej7xNi9n4vzZeUMNuMg_0Grn1gBIFOdAQA>
 <xmx:z5nMaK8yFY8nMu7jYtC6aH5eq44AbMr3UhNpEjvTvjNvrN229f95Lg>
 <xmx:z5nMaN_WYacWs4h6gQ0IsIMvq6HH56FGlM9r7DTNqiWl-cCvrI4pcA>
 <xmx:z5nMaJdaE4xcPeYqzckiFkkqDdhJel6BxdGkk84eX6AKarYTyed3AQ>
 <xmx:z5nMaB86T56qkGAy98DNl7MjEIiL0ZyQWxdE3JiSe3W4q20Z-FoTYC8L>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 18 Sep 2025 19:46:22 -0400 (EDT)
Date: Fri, 19 Sep 2025 08:46:20 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH 5/6] firewire: core; eliminate pick_me goto label
Message-ID: <20250918234620.GA127993@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <20250918230857.127400-1-o-takashi@sakamocchi.jp>
 <20250918230857.127400-6-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250918230857.127400-6-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Fri, Sep 19, 2025 at 08:08:56AM +0900,
 Takashi Sakamoto
 wrote: > This commit uses condition statements instead of pick_me goto label.
 > > Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp> > [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1uzOKb-00030K-5L
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

On Fri, Sep 19, 2025 at 08:08:56AM +0900, Takashi Sakamoto wrote:
> This commit uses condition statements instead of pick_me goto label.
> 
> Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
> ---
>  drivers/firewire/core-card.c | 102 ++++++++++++++++++-----------------
>  1 file changed, 52 insertions(+), 50 deletions(-)
> 
> diff --git a/drivers/firewire/core-card.c b/drivers/firewire/core-card.c
> index 6268b595d4fa..b766ce5fdea4 100644
> --- a/drivers/firewire/core-card.c
> +++ b/drivers/firewire/core-card.c
> @@ -388,6 +388,7 @@ static void bm_work(struct work_struct *work)
>  	int root_id, new_root_id, irm_id, local_id;
>  	int expected_gap_count, generation;
>  	bool do_reset = false;
> +	bool stand_for_root;
>  
>  	if (card->local_node == NULL)
>  		return;
> @@ -408,11 +409,11 @@ static void bm_work(struct work_struct *work)
>  			fw_schedule_bm_work(card, msecs_to_jiffies(125));
>  			return;
>  		case BM_CONTENTION_OUTCOME_IRM_HAS_LINK_OFF:
> -			new_root_id = local_id;
> -			goto pick_me;
> +			stand_for_root = true;
> +			break;
>  		case BM_CONTENTION_OUTCOME_IRM_COMPLIES_1394_1995_ONLY:
> -			new_root_id = local_id;
> -			goto pick_me;
> +			stand_for_root = true;
> +			break;
>  		case BM_CONTENTION_OUTCOME_AT_NEW_GENERATION:
>  			// BM work has been rescheduled.
>  			return;
> @@ -423,8 +424,8 @@ static void bm_work(struct work_struct *work)
>  			return;
>  		case BM_CONTENTION_OUTCOME_IRM_IS_NOT_CAPABLE_FOR_IRM:
>  			// Let's do a bus reset and pick the local node as root, and thus, IRM.
> -			new_root_id = local_id;
> -			goto pick_me;
> +			stand_for_root = true;
> +			break;
>  		case BM_CONTENTION_OUTCOME_IRM_HOLDS_ANOTHER_NODE_AS_BM:
>  			if (local_id == irm_id) {
>  				// Only acts as IRM.
> @@ -434,60 +435,61 @@ static void bm_work(struct work_struct *work)
>  		case BM_CONTENTION_OUTCOME_IRM_HOLDS_LOCAL_NODE_AS_BM:
>  		default:
>  			card->bm_generation = generation;
> +			stand_for_root = false;
>  			break;
>  		}
>  	}
>  
> -	/*
> -	 * We're bus manager for this generation, so next step is to
> -	 * make sure we have an active cycle master and do gap count
> -	 * optimization.
> -	 */
> -	if (card->gap_count == GAP_COUNT_MISMATCHED) {
> -		/*
> -		 * If self IDs have inconsistent gap counts, do a
> -		 * bus reset ASAP. The config rom read might never
> -		 * complete, so don't wait for it. However, still
> -		 * send a PHY configuration packet prior to the
> -		 * bus reset. The PHY configuration packet might
> -		 * fail, but 1394-2008 8.4.5.2 explicitly permits
> -		 * it in this case, so it should be safe to try.
> -		 */
> -		new_root_id = local_id;
> -		/*
> -		 * We must always send a bus reset if the gap count
> -		 * is inconsistent, so bypass the 5-reset limit.
> -		 */
> -		card->bm_retries = 0;
> -	} else {
> -		// Now investigate root node.
> -		struct fw_device *root_device = fw_node_get_device(root_node);
> -
> -		if (root_device == NULL) {
> -			// Either link_on is false, or we failed to read the
> -			// config rom.  In either case, pick another root.
> -			new_root_id = local_id;
> +	// We're bus manager for this generation, so next step is to make sure we have an active
> +	// cycle master and do gap count optimization.
> +	if (!stand_for_root) {

I realized that the "stand_for_root" local variable would be
ununitialized here at the case of "card->bm_generation == generation".
Let me post take 2.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
