Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 520F39299D2
	for <lists+linux1394-devel@lfdr.de>; Sun,  7 Jul 2024 23:43:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sQZfb-0006oW-Lj;
	Sun, 07 Jul 2024 21:43:44 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sQZfa-0006oL-4W
 for linux1394-devel@lists.sourceforge.net;
 Sun, 07 Jul 2024 21:43:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xt+HlmR1s84WsBoGqDJDIMxpN8aHSwMnJsBwuWrNkd4=; b=CZldFUDcu4vyz/Zn7j4Rhvz+fV
 qh+z9sFi1ofSKYJvYAuFtKoCX3dhWImEJY5BO3lVvxkVtO/r7epx2jjgqw5UeP1dz7QNQ8TWV/np5
 GSI7rluYE9HaqH6rKrHcwVWC0T22pOfW3edWV3HZQXEqvYipwaK7Y2wWNitdt4yLBHvI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xt+HlmR1s84WsBoGqDJDIMxpN8aHSwMnJsBwuWrNkd4=; b=BOs+ottuE992z/GsbpDtOGUo11
 uR3QDWptOBPMB1C7TVbWo8qTVnAjNbSd5G/hQIc96P7WseqwK6iNm5hf6ryYX3ZYXyz2sm2JDuiV0
 S9rDxPGkBb085EX/nVqaEEN3i8GYKXYIVCYQoFpWDLaJpD9Nf+AoPLG1hNI+aCXVgVZ8=;
Received: from fout8-smtp.messagingengine.com ([103.168.172.151])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sQZfb-0007NS-42 for linux1394-devel@lists.sourceforge.net;
 Sun, 07 Jul 2024 21:43:43 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
 by mailfout.nyi.internal (Postfix) with ESMTP id AB8CC13802E6;
 Sun,  7 Jul 2024 17:43:31 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute6.internal (MEProxy); Sun, 07 Jul 2024 17:43:31 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1720388611; x=
 1720475011; bh=xt+HlmR1s84WsBoGqDJDIMxpN8aHSwMnJsBwuWrNkd4=; b=l
 LQWe5RBAP55W198nB6fONq3jZ8s06rnlaqt89QdZwNZRdjGVCaQeiqWkjGBSicj+
 Ob7K7v8F1Qe6Hze9VNAzxFcAzieuvKXi2pI/pCCFntCp8Z12ewVmbsppyonoehE6
 sAugLGfpe6l80PYnkl1RfeXuHMt6fzVPPk1dtGkGp3gOiw0B35MYvcEKn6oCWOpl
 HfxSko5wlmq1ZXy3BXZCRJWzbWeaRkmUpZY8+Nc/ilxlXRoO2H8pskj3yfPTUrfv
 uoo6jxfmy0kCopTTrJvo/J8/RGwVuSHExAwi3ismK8lMq5Ni0812Ncr1DIVEfLWL
 eKff/g1y8gQPe0sOihUeQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; t=1720388611; x=1720475011; bh=xt+HlmR1s84WsBoGqDJDIMxpN8aH
 SwMnJsBwuWrNkd4=; b=Zr/X68AVCZ8tLjzDp4dyCiyuS5yLSEDsc7yLqn98W2LM
 MHLn78fw7U/A47ZxU/g9kUx4E5fF5f4DRXYaXS+mSnGdoohcSi7azq6VTlVOC9mc
 RSbocWS1Cc1AMM73ax/bzEp30nocWqbz71f2eV8Co/74e0axH6DRYkOJQNtlVapJ
 fWTVaxPG204BKNvvnp50GpS9Ch+7wwAgu0c9Ov+FcWtdaolx/Mvk0odBXSVfKNYw
 I7nNx+cIisUlPUHsn8Ee5fFOZpctsX1uASZKwsq3AuDoSnRsFVcdt14NLDLUPuFs
 +uIGap4uRzTOBkk7Vs80EmfEYM3Z6BSY3VU5yu0AUw==
X-ME-Sender: <xms:AwyLZp2gSIVM34SzlLXaNBfQCiKNPW9nr40TlQ6d8YedZIN37P-HhQ>
 <xme:AwyLZgGN636olgntwiJf6ZpoHobS0nf8dtpim22JIetm_yA7Tu2FZHYbyqt6KX2_t
 5vPup9Uj1WpLGgPg9I>
X-ME-Received: <xmr:AwyLZp5HRn08XGjoc2bAFihtt_Wqqrk453ltF3_G9EoBR6CZc-gUhUtwpUGJ9aT4U8u_kOK0pQpfZ39XYDMqeF9xXvA_KaokbwQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrvdeigddtvdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvfevuffkfhggtggujgesthdtre
 dttddtvdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepveeilefhud
 ekffehkeffudduvedvfeduleelfeegieeljeehjeeuvdeghfetvedvnecuffhomhgrihhn
 pehkvghrnhgvlhdrohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmh
 grihhlfhhrohhmpehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:AwyLZm3ez8nlvab5kmIF-Pq0hA1c4S0eN0SUJ-GBWyzQEtmytVRX3Q>
 <xmx:AwyLZsFmF35LYYNR5thn19FbdAMgn-fhK-pMED3LIZJ3YDuUIyCaDg>
 <xmx:AwyLZn_CGk_4KdwE0XGLa24R5NyIf1lpxJb2iTzQcEUGcNOXe91JoQ>
 <xmx:AwyLZpl71Jq4zoYQKLO3S9GZymeVMe3anpAxjBuGxHlQXGVLnr5I0A>
 <xmx:AwyLZgBZQ7ToeDqMMMmXmc-mi6_CZIlZBSQVwh8UfJ0J58ZPPCGfAhoQ>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 7 Jul 2024 17:43:30 -0400 (EDT)
Date: Mon, 8 Jul 2024 06:43:26 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH] Revert "firewire: ohci: use common macro to interpret
 be32 data in le32 buffer"
Message-ID: <20240707214326.GA16237@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, kernel test robot <lkp@intel.com>
References: <20240707134523.11784-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240707134523.11784-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sun, Jul 07, 2024 at 10:45:23PM +0900, Takashi Sakamoto
 wrote: > This reverts commit f26a38e61c03fdfacb6b596e1daf665cf4526a60, since
 it > causes the following sparse warnings: > > sparse warnings: [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.151 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.151 listed in sa-trusted.bondedsender.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1sQZfb-0007NS-42
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
Cc: linux-kernel@vger.kernel.org, kernel test robot <lkp@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On Sun, Jul 07, 2024 at 10:45:23PM +0900, Takashi Sakamoto wrote:
> This reverts commit f26a38e61c03fdfacb6b596e1daf665cf4526a60, since it
> causes the following sparse warnings:
> 
> sparse warnings: (new ones prefixed by >>)
> >> drivers/firewire/ohci.c:891:23: sparse: sparse: cast to restricted __be32
> >> drivers/firewire/ohci.c:891:23: sparse: sparse: cast from restricted __le32
>    drivers/firewire/ohci.c:892:23: sparse: sparse: cast to restricted __be32
>    drivers/firewire/ohci.c:892:23: sparse: sparse: cast from restricted __le32
>    drivers/firewire/ohci.c:893:23: sparse: sparse: cast to restricted __be32
>    drivers/firewire/ohci.c:893:23: sparse: sparse: cast from restricted __le32
>    drivers/firewire/ohci.c:905:31: sparse: sparse: cast to restricted __be32
>    drivers/firewire/ohci.c:905:31: sparse: sparse: cast from restricted __le32
>    drivers/firewire/ohci.c:914:31: sparse: sparse: cast to restricted __be32
>    drivers/firewire/ohci.c:914:31: sparse: sparse: cast from restricted __le32
>    drivers/firewire/ohci.c:939:18: sparse: sparse: cast to restricted __be32
>    drivers/firewire/ohci.c:939:18: sparse: sparse: cast from restricted __le32
>    drivers/firewire/ohci.c:2033:23: sparse: sparse: cast to restricted __be32
>    drivers/firewire/ohci.c:2033:23: sparse: sparse: cast from restricted __le32
>    drivers/firewire/ohci.c:2037:27: sparse: sparse: cast to restricted __be32
>    drivers/firewire/ohci.c:2037:27: sparse: sparse: cast from restricted __le32
>    drivers/firewire/ohci.c:2038:27: sparse: sparse: cast to restricted __be32
>    drivers/firewire/ohci.c:2038:27: sparse: sparse: cast from restricted __le32
> 
> Reported-by: kernel test robot <lkp@intel.com>
> Closes: https://lore.kernel.org/oe-kbuild-all/202407050656.03bw1YXA-lkp@intel.com/
> Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
> ---
>  drivers/firewire/ohci.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied to for-next branch.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
