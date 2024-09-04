Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 510CB96B806
	for <lists+linux1394-devel@lfdr.de>; Wed,  4 Sep 2024 12:15:27 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sln2l-0003pZ-RT;
	Wed, 04 Sep 2024 10:15:20 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sln2j-0003pQ-Mf
 for linux1394-devel@lists.sourceforge.net;
 Wed, 04 Sep 2024 10:15:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NICRXsHVZn38zfbA1RWDA2vC04hYOdWZ0/xCYE5ibDA=; b=NSVDTOeNMxliRSZtliZYQQthXy
 E8ljOls2A8eFDp0X28MQJvjGEDSigfj3tGf+q/IQJls0UnwExeet67q3W0RYv98HXQnqn+XeVTeVB
 dT+39DeUyH+/jSX8KVTmZz3hrHb0KjmGOHyvkC475yniNgqzdOqwfX3ELfsciR/xHo0k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NICRXsHVZn38zfbA1RWDA2vC04hYOdWZ0/xCYE5ibDA=; b=N0lIeBy3qHNAdk+sJw6opEcVQ+
 QCKAv/UT0SiTPT+caZGlrYn2qcarsZEac9p0w5AH6y8uuAJOX77HxUl4n9w4g1uikFb/4htsA4cSJ
 cERmHbIb67YmSsULBeMNtnW7RnEGuxqPugnoz197szaJmQqcWnEa6Kswmx322vdWQ0tw=;
Received: from fhigh6-smtp.messagingengine.com ([103.168.172.157])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sln2j-0006Fb-Jb for linux1394-devel@lists.sourceforge.net;
 Wed, 04 Sep 2024 10:15:18 +0000
Received: from phl-compute-05.internal (phl-compute-05.phl.internal
 [10.202.2.45])
 by mailfhigh.phl.internal (Postfix) with ESMTP id E9F51114024E;
 Wed,  4 Sep 2024 06:15:06 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-05.internal (MEProxy); Wed, 04 Sep 2024 06:15:06 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1725444906; x=
 1725531306; bh=NICRXsHVZn38zfbA1RWDA2vC04hYOdWZ0/xCYE5ibDA=; b=q
 /zIbPxdrwGFwiAKwQm6MW6G6+WDRQH276AzCzprr+RHP4DuAk4VHKh1rcIOrccsh
 k117wgQ1DnkOuG+ZnHvop89YsmC165uoU63vBxk7Vruzm4FrDE5HKJvriPUjuvXR
 rdH1Y+4gzExAh8dekXJY/TgR+egAxP+5EXD3OK62S3G/UM+PZF/uh9/3w5uLlShi
 mKtCU+ygQu9kryALpVc+lSqPT9ZHn3/ifGepf11fnR4dhPpc/ox26ol0abh3Hwe0
 AvewyKjbHB48rsYlaMSduscsWWSIFdA3DrEPn7NWjOGlu5Iegev5htXnkt0Rzebo
 skLkM5F6nGNvaSUBoNxUQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; t=1725444906; x=1725531306; bh=NICRXsHVZn38zfbA1RWDA2vC04hY
 OdWZ0/xCYE5ibDA=; b=fyQfGcx/p8jBfNPg8WeKctuwUrCH7TKWxy427dkX3QOX
 bGLkz14rhv24FTQ7aq3HVafX7Z5eHshBpwja18nRv1N8j/PGtKwPoggh9V8Il1lw
 GQQ55krU+XitVheJ5GLoOoLXZH/aY/t1o6YMHnblpZOAXIohZz7As1OshTvVAcnv
 0mVWEjxN5Z9p8kvNq+ZOtXDMEo5b1rvHx95v0NhX0/ByvjOFAJRZfhH5kP+sGVmn
 zsSNDwUptaZMD1hmm9dduF2Md/fP4RcurxczzA1SNPYwI6Mk9LsvPuYqJXmHiRqh
 Ktu55nA+s61YxkPSQvfkuglGnPcI7gnW28gOlNMiRQ==
X-ME-Sender: <xms:KjPYZhXRCuamrOYJjxoKPBrvMp1enaoXT6VrlOfYJlYmfaTnfv-qbg>
 <xme:KjPYZhkAxufhhez12BJqJ6pfmfRUaDM3Wz1XMs0zrvXP5B3CXChPoNYHz4W1YXOfu
 0waMSC4krQH33n8XLQ>
X-ME-Received: <xmr:KjPYZtbY0E-iUGq2tMpW3t1KTat4dgP5UbL5fR7lEX6HGOndwkLlLtVNbnlbNPxepu7fFogp0b407aNJD6JX3ONm1KKBqq4VfTk>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudehjedgvdehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvve
 fukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefvrghkrghshhhiucfurghkrghm
 ohhtohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrg
 htthgvrhhnpeehhffhteetgfekvdeiueffveevueeftdelhfejieeitedvleeftdfgfeeu
 udekueenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
 hoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopedv
 pdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvg
 hlsehlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhu
 gidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:KjPYZkUD6FxbnZ49sO8HL2-67TuaZ04xnDE2ibw90kyhEw4cowtjWQ>
 <xmx:KjPYZrkmmReSZJE67IkxsTK-OCkRIeMmZnIRRpJXwYRnegkV2T8z7g>
 <xmx:KjPYZhdPckbHsqW1G8bSxCGed2JhaAxIDuCTVHPw_vghbRPeIpxmhA>
 <xmx:KjPYZlHoi__R3ASdEpdV88JaZB3L0nQSj8f2Xpi-WFBaQQ585YAUAw>
 <xmx:KjPYZgzyUmYHz5XRzH7AEvSWTm4Gq7BLGt-Xiy4dAqNhShJ6F5peq3lJ>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 4 Sep 2024 06:15:05 -0400 (EDT)
Date: Wed, 4 Sep 2024 19:15:03 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH] firewire: ohci: deprecate debug parameter
Message-ID: <20240904101503.GB437448@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <20240903101455.317067-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240903101455.317067-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Sep 03, 2024 at 07:14:55PM +0900, Takashi Sakamoto
 wrote: > Many tracepoints events have been added to 6.10 and 6.11 kernels.
 They are > available as an alternative of debug parameter in firew [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [103.168.172.157 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.157 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1sln2j-0006Fb-Jb
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

On Tue, Sep 03, 2024 at 07:14:55PM +0900, Takashi Sakamoto wrote:
> Many tracepoints events have been added to 6.10 and 6.11 kernels. They are
> available as an alternative of debug parameter in firewire-ohci module.
> 
> The logging messages enabled by the parameter require some cumbersomes in
> a point of maintenance; e.g. the code to decode transaction frame.
> 
> This commit adds deprecation text to conduct users to them..
> 
> Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
> ---
>  drivers/firewire/ohci.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)

Applied to for-next branch.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
