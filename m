Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D656B42260
	for <lists+linux1394-devel@lfdr.de>; Wed,  3 Sep 2025 15:47:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UK7Nw/1kZWYq/+zKpzHKV6BTqLy45cqHZ/JOsNVVh+Q=; b=VNiYjaIS9MJDi8kImwoMT25avO
	Coe5zq5HrOdA+qPrVmutk9athWfDOlb0QThdUS/LGht9IaVU9Ua5sDJ2RC4gJIzbc+u9agb8Acsva
	7pE2W5ISCwdFjks6x6H2FhXQFT8r9UWudiFgbQgOnu5Yl77CleABwAgGkVlo+oiaI5UA=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1utnpx-0002RD-IQ;
	Wed, 03 Sep 2025 13:47:45 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1utnpv-0002R5-JO
 for linux1394-devel@lists.sourceforge.net;
 Wed, 03 Sep 2025 13:47:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cf5WfLqC5yDQiJux02XLazqN1A8EU3mDFhAaFl3ZMD4=; b=Q1XWu6mmGYpVGQCLrVjEHauUbM
 /Bo1dKqmpeTm52+Mk5/ebsWfbc9O8GVzEcPaLIGY0JEWvMNs1zHv+jYHmxjvwvbSpkiBg4erCUZ/S
 4db75sxmAseZrjUoDpoIVshstHRjknrE132aBjEtnZEZI08hy6P18cIMxQ1DPYicHEe0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cf5WfLqC5yDQiJux02XLazqN1A8EU3mDFhAaFl3ZMD4=; b=nAc5Nte6yJYN+4oXhvQ4xb+zsN
 7MlXOarivfdGBx8Ik6UdxXpf5OTpkqaVJ3k8SZNjxOIDXinqV1pO/s3Mf1k/ukg7mRoshZNlYn84I
 6fdpjqUYTBa3K+zOP1B0vf7pJDcgSY8W+8gq7+2sLlRydmevO98UwA5cICty5QenplB4=;
Received: from fout-a8-smtp.messagingengine.com ([103.168.172.151])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1utnpv-0006L1-1T for linux1394-devel@lists.sourceforge.net;
 Wed, 03 Sep 2025 13:47:43 +0000
Received: from phl-compute-06.internal (phl-compute-06.internal [10.202.2.46])
 by mailfout.phl.internal (Postfix) with ESMTP id 554EFEC0342;
 Wed,  3 Sep 2025 09:47:32 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-06.internal (MEProxy); Wed, 03 Sep 2025 09:47:32 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:content-type:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:subject
 :subject:to:to; s=fm1; t=1756907252; x=1756993652; bh=cf5WfLqC5y
 DQiJux02XLazqN1A8EU3mDFhAaFl3ZMD4=; b=IWNw8XWw5oMCoUUV51zqe5MzWH
 UqrIo9RLrnu8FCgACEpKK9GEXAtCuxzArwhsCwGxJ2zyPMj+FPmGQIxC9DC6H6rR
 7E56EN0mMAT2xVU2QcZka8FL2gXyG5lICE5OAJAxcQYJU7EtyQkTNXTaRK9DQmo1
 fnCow4KomjmLB9feXOzHj/EB4IEBP4I/E8vfi/U19tfoTukDQUIVROMec/5MTt2t
 Um72puEnQipnm0b7ECvtlPywM0ItBAbX5buboDqBcmhi/E8GFcp2Ev5yZJBZ1RUs
 T1KXqx19+PTlDmjdg0EG964oRTAMjrMehWG621ygEvXFqTBzRGI3N/yYGldQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
 1756907252; x=1756993652; bh=cf5WfLqC5yDQiJux02XLazqN1A8EU3mDFhA
 aFl3ZMD4=; b=SOOInbE5BsCCoggsDPSA8iur0/AT2R4+9i1L/oXFW3WJok9ExUw
 VYVEbzB6+fUhRgitHXzIpDaRFpL9mw3Gsi4oWGbGbbWETYLxNr8Ct01OTXDJYL0t
 tYdiUTKtKCe3e/oT9oMeUH6IX0VMDvr+j4aBXWAu0urKOu33IEZqho5UCD7dt4zt
 +EZY470KYdiuysXwfyyn2lDIIoewW3oWWr07QM+/WY8q9sJ0uf9Q83J3gyOjtKjr
 NX5DKoaeEFITr1KLA2KDaAh/rPszqXqFwDJg1FSxHs4/QbK+1tx3NDn6XMeMJOTQ
 tBOCz1gUR9Kig1AsqjT0uOFLaAzBgGdjeDA==
X-ME-Sender: <xms:80a4aE0wKPtMW-EKzV3YzICla78VQfGxfRaDcdDuOAJF1lwQsjvGew>
 <xme:80a4aIj0vgXexrgp7WC3JSPVvlX_QJPBlxTaSMZ9z2cWJmjMzZRqmQ_OmJOJfef9b
 stZQqRZSiUsl_Pb_MI>
X-ME-Received: <xmr:80a4aMeb9q0T-S_dMbLT0kpNgb0sUrfcMRu8Ty1DazP2pDQm8z_Nqf02EcA_gvCEBhTgnvNH_D5EMc6fIrLZ2JM6AhDHP2Y6aGk>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdeffedtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceurghi
 lhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesthdtredttddtvd
 enucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihes
 shgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepgffgieehkeeuhfehud
 euieelteffveegueeikeefgeefgfetvdevtefgtdeguedunecuffhomhgrihhnpehgihht
 hhhusgdrtghomhdpkhgvrhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenuc
 frrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhi
 rdhjphdpnhgspghrtghpthhtohepgedpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtoh
 epmhhishhtvghrmhhiughisehgmhgrihhlrdgtohhmpdhrtghpthhtoheplhhinhhugidu
 feelgedquggvvhgvlheslhhishhtshdrshhouhhrtggvfhhorhhgvgdrnhgvthdprhgtph
 htthhopehlihhnuhigqdhkvghrnhgvlhesvhhgvghrrdhkvghrnhgvlhdrohhrghdprhgt
 phhtthhopehgrhgvghhkhheslhhinhhugihfohhunhgurghtihhonhdrohhrgh
X-ME-Proxy: <xmx:9Ea4aDkxVFd4UBV_WwECFetIe0UrSwfUC5Lnb_H6pRYuzHcFAkGgrA>
 <xmx:9Ea4aNsRy7ysPzImVsbaryWRfJWU9J5OGTtu9CNKz-n1aof84m7_6g>
 <xmx:9Ea4aB_vd9empdOE9moeN0qLOZlALhsemia37G6bESl3lqUXlUX9VQ>
 <xmx:9Ea4aHPUG1fkqGxRgCbBt0TNiXZ-vXQJD4Rd3-M1bLPfc4-I1A2BxQ>
 <xmx:9Ea4aBsqiHwk2BMHRzZ2vssOR19-4he7FyALQtbzxqU4MMJ9XuDHVKcd>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 3 Sep 2025 09:47:30 -0400 (EDT)
Date: Wed, 3 Sep 2025 22:47:28 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Aleksandr Shabelnikov <mistermidi@gmail.com>,
 linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 gregkh@linuxfoundation.org
Subject: Re: [PATCH v2] firewire: core: bound traversal stack in
 read_config_rom()
Message-ID: <20250903134728.GA134568@workstation.local>
Mail-Followup-To: Aleksandr Shabelnikov <mistermidi@gmail.com>,
 linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 gregkh@linuxfoundation.org
References: <20250902092745.8326-1-mistermidi@gmail.com>
 <20250903132048.GA77442@workstation.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250903132048.GA77442@workstation.local>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Sep 03, 2025 at 10:20:48PM +0900, Takashi Sakamoto
 wrote: > Contributions to this subsystem may not provide a strong advantage
 to > your career as a software engineer. However, knowledge and e [...] 
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
X-Headers-End: 1utnpv-0006L1-1T
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On Wed, Sep 03, 2025 at 10:20:48PM +0900, Takashi Sakamoto wrote:
> Contributions to this subsystem may not provide a strong advantage to
> your career as a software engineer. However, knowledge and experience
> with the KUnit framework will certainly be valuable and beneficial. If
> you are still motivated, I encourage you to give it a try.

My collection of configuration ROM would be helpful to see the actual
content. They includes the ones from some music instruments:

* https://github.com/takaswie/am-config-roms/

When parsing the content, 'config-rom-pretty-printer' would be also
helpful, however I note that it has no support for "Extended_ROM entry"
in clause 7.7.18 of IEEE 1212:

https://git.kernel.org/pub/scm/utils/ieee1394/linux-firewire-utils.git/


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
