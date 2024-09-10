Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 861A9972C83
	for <lists+linux1394-devel@lfdr.de>; Tue, 10 Sep 2024 10:51:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1snwav-0005TY-OQ;
	Tue, 10 Sep 2024 08:51:29 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1snwat-0005TF-QP
 for linux1394-devel@lists.sourceforge.net;
 Tue, 10 Sep 2024 08:51:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QC78W/7TuXehLycwIf9mynBigVoR8+44ttRaTS2VOZQ=; b=F51/+LKmYCKqZAT47Eu+pIZo8t
 EMTYJDK7L83d0cNh3gv3csnaLozsJvTIvXbmMw2tYKJFLj+pSYK65ZAofbXmD4KlsD8wOm6b/UeGA
 cuTDFamZsq1GwvNazHYtGq085jPleL4P/d75DX6i2dMETkMOaiAWi9Ve0Xmli5WzBjio=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QC78W/7TuXehLycwIf9mynBigVoR8+44ttRaTS2VOZQ=; b=kqx/VcTEK5SrnML4JMu6V/TIqB
 DNu0AvB7mh/JeAf8g5je81Um4VezPrtuFRaP2lRyn6hlfmU54CEHImQt8F88ajq7YbWQC85lG2ptl
 KwM2nHgaMbD9jeEXAtVGpofJEpFy/p/HJkwl85KyVU85yeMGBAstnqsE/4UvmwKJNFlw=;
Received: from fhigh7-smtp.messagingengine.com ([103.168.172.158])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1snwas-00075Y-Qm for linux1394-devel@lists.sourceforge.net;
 Tue, 10 Sep 2024 08:51:27 +0000
Received: from phl-compute-03.internal (phl-compute-03.phl.internal
 [10.202.2.43])
 by mailfhigh.phl.internal (Postfix) with ESMTP id 314C61140316;
 Tue, 10 Sep 2024 04:51:21 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-03.internal (MEProxy); Tue, 10 Sep 2024 04:51:21 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1725958281; x=
 1726044681; bh=QC78W/7TuXehLycwIf9mynBigVoR8+44ttRaTS2VOZQ=; b=o
 uAH4DGr3XF1Q9ug6D1tqNlAPM5XeEzmgqBFnpSlpJcmpXSlJumKgl2sa1IizBg3N
 dlEQ7OxvX4wDFa+YcX7eMHfXHEI75dEgFdx/j7TKljkwiN8Eh4tj0WVMiDqu+mPp
 ZA9VpQyj2F6I4PbmWyHLqppFxZknaPmNSmkRty8tQHiLDAH1WbfOhhIRQsqVd9tr
 /vtMPhcbuOEJpOv6nH1cs28UvMH7OzCajGm/OSbCRGHoYZdqj97YRwbymPSb+ddx
 e3lL+x37Cx9OvjQpsY7SzA5N9G+RgM70NsNfyCoMAHSuGdKoFp+2D27OWRNMENgc
 3yjI/Y46Je1K9OBX83LhA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; t=1725958281; x=1726044681; bh=QC78W/7TuXehLycwIf9mynBigVoR
 8+44ttRaTS2VOZQ=; b=cVfaEIHnc1BYb1Brt/rVr1ANGllUH3X4edTlXNbUZI45
 wspMme5y05pwWuorkL/bCBA+LV6HH+0AhE51nvyFPZxD6Y8ah3mtqbZI8CZtJ76f
 XqYk7/+qslxZ6mDkYAfmlCQX6SYiXSq8bwzvqyiarHOH85VTZWedtov9nD+CzlcJ
 ICGr1LGeXAMsJ02r5PInEc8B3KZEs32XGDn8+s6Jw9YDL2W1H6lKXgXlR3AoZ0jZ
 ihPBHIKROiIe5/ZeiYq0Oo2tlqOjI5uvR/sMd9GyvwfLa1bNSXhNCajTrBVVrXM+
 1JRkc86W4yr6I0/0GfSvEV59J4x1OqDZm6snIcMYUw==
X-ME-Sender: <xms:iQjgZj06Kio82_LtVIAMpmyb03Gl_bxJQ6MBqHAzVXoaInTBgbyQ8A>
 <xme:iQjgZiG2f8JoZX7sdFzOi7zJBQxPS7CAub1eA4DkcEtyo5lEXT6oIonPvpg5EWzz2
 nXy91ARICZdN9Cm3v4>
X-ME-Received: <xmr:iQjgZj6KzgkymXAbmFQRVXMBdQjNkUYQzOHWJZ4GcjqTOl0KBzdRRIBTZHsk_yxBxmLbMXnD9XVta6fA70bpVDuIJEDCrjpjinY>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudeiledgtdekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvve
 fukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefvrghkrghshhhiucfurghkrghm
 ohhtohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrg
 htthgvrhhnpeehhffhteetgfekvdeiueffveevueeftdelhfejieeitedvleeftdfgfeeu
 udekueenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
 hoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopeef
 pdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvg
 hlsehlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhu
 gidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtoheplhhinh
 hugidqshhouhhnugesvhhgvghrrdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:iQjgZo38LzfOYE7YYQWTeSTMhaccZFNMA3HOqAh2EnU5xCLXR6LuSA>
 <xmx:iQjgZmH6lPA7xvwymoiuBRW6ZWzcsspmF5Pd4WTZ3I8EH2vQ2j4C5w>
 <xmx:iQjgZp9dtLgCia1xapN-hOj6hjOk5tiqdZaTtlXIzdJKP5RyLeh-NQ>
 <xmx:iQjgZjlIGlSL6-Cr_EnZpZUvYOYB2Wy3mYn7hXHQmIrCz4R46t1dFw>
 <xmx:iQjgZiA4CQSdSSHM-xKyjlLoaQav4_3Tl6ifYC1_gODflcu-VL80ATOD>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 10 Sep 2024 04:51:19 -0400 (EDT)
Date: Tue, 10 Sep 2024 17:51:17 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH 0/2] firewire: core: optimize for concurrent calls of
 fw_iso_context_flush_completions()
Message-ID: <20240910085117.GA91104@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, linux-sound@vger.kernel.org
References: <20240909140018.65289-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240909140018.65289-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Sep 09, 2024 at 11:00:16PM +0900, Takashi Sakamoto
 wrote: > Hi, > > It seems to be the last week for v6.12 development. I realize
 it > unpreferable to propose intrusive changes, however I also [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.158 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1snwas-00075Y-Qm
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
Cc: linux-kernel@vger.kernel.org, linux-sound@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On Mon, Sep 09, 2024 at 11:00:16PM +0900, Takashi Sakamoto wrote:
> Hi,
> 
> It seems to be the last week for v6.12 development. I realize it
> unpreferable to propose intrusive changes, however I also realized that
> there is a room to refactor core functions in respect to handler of work
> item for isochronous context for the next merge window...
> 
> This series of changes refactors the core function to call
> fw_iso_context_flush_completions() from the work item. It optimizes some
> event waiting and mediation of concurrent calls as well.
> 
> Takashi Sakamoto (2):
>   firewire: core: move workqueue handler from 1394 OHCI driver to core
>     function
>   firewire: core: use mutex to coordinate concurrent calls to flush
>     completions
> 
>  drivers/firewire/core-iso.c | 31 ++++++++-------
>  drivers/firewire/core.h     |  5 ---
>  drivers/firewire/ohci.c     | 78 +++++++------------------------------
>  include/linux/firewire.h    |  1 +
>  4 files changed, 31 insertions(+), 84 deletions(-)

Applied to for-next branch.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
