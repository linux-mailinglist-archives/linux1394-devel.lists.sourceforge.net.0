Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F2A4783D4E0
	for <lists+linux1394-devel@lfdr.de>; Fri, 26 Jan 2024 09:50:08 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rTHuM-0004n5-Lh;
	Fri, 26 Jan 2024 08:49:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <adamg@pobox.com>) id 1rTHuK-0004my-VY
 for linux1394-devel@lists.sourceforge.net;
 Fri, 26 Jan 2024 08:49:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=P2j0dTqqaUbzLGvLxwjMS4oBYPNbAIAmZLHzzbE/F4M=; b=SnnJx995pGtTkMqN3wRMx4eu+Q
 T0Q0CQTVmbIKcTYLpYzvNQyvNz2JnABsy4Q0JNAjXjCTgL/Dt6jqtS0QzZQBJZLFxCdnmPYavxtbC
 4kTpbp9C1xDPwzGYv6mRxjYx8n/rmIRvFJZnlj2mgY3ltGPy7YV0CpSWawh/RCxoKDgY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=P2j0dTqqaUbzLGvLxwjMS4oBYPNbAIAmZLHzzbE/F4M=; b=QStWZ6MShbOOBh4HF9C/HSC4s1
 l+/wXaFlcA2dq/VARccqCUh2O+xbxp8RyZ0axhpt9kGp6mtx6kVbgWDLBSVLQO9hpRwDAp/Kx89Vo
 CA66rqS+FPxg0MJzdbtRQ0MfptdIZwCbzgdQ1qbe3JFjr2AJAfhzKJydGvtORJK4Qt8k=;
Received: from pb-smtp21.pobox.com ([173.228.157.53])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rTHuE-00043g-OV for linux1394-devel@lists.sourceforge.net;
 Fri, 26 Jan 2024 08:49:52 +0000
Received: from pb-smtp21.pobox.com (unknown [127.0.0.1])
 by pb-smtp21.pobox.com (Postfix) with ESMTP id DAC40293E3;
 Fri, 26 Jan 2024 03:49:41 -0500 (EST) (envelope-from adamg@pobox.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=pobox.com; h=date:from
 :to:cc:subject:message-id:references:mime-version:content-type
 :in-reply-to; s=sasl; bh=brYXUQsH/TMsNFWCycIBH0uKvwRbXqVAUVOr5hA
 HiuM=; b=uXq8Q537s3lv47lVM8jeymVzCHUyFpZO8r0tz7VvTIMy5+RcGp3yRvl
 A1oqftK7NhXIoJfTctWAMXDuXmKn9YYy1CrLcNNr67IwoB2qkSz19X98RFYPUmIX
 n6cF9nkwn1i+6ZtuHIlQgQq0ye/JBrxwwdgjxi1+xZP7IHou+aF0=
Received: from pb-smtp21.sea.icgroup.com (unknown [127.0.0.1])
 by pb-smtp21.pobox.com (Postfix) with ESMTP id D3799293E2;
 Fri, 26 Jan 2024 03:49:41 -0500 (EST) (envelope-from adamg@pobox.com)
Received: from pogo.deviceside.com (unknown [71.19.144.253])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by pb-smtp21.pobox.com (Postfix) with ESMTPSA id A92C5293E1;
 Fri, 26 Jan 2024 03:49:38 -0500 (EST) (envelope-from adamg@pobox.com)
Received: from iguana.24-8.net (99-122-168-208.lightspeed.irvnca.sbcglobal.net
 [99.122.168.208])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (prime256v1) server-signature ECDSA (prime256v1)
 server-digest SHA256) (No client certificate requested)
 (Authenticated sender: iguana@pogo.deviceside.com)
 by pogo.deviceside.com (Postfix) with ESMTPSA id 2571EC09AD;
 Fri, 26 Jan 2024 00:49:37 -0800 (PST)
Date: Fri, 26 Jan 2024 00:49:35 -0800
From: Adam Goldman <adamg@pobox.com>
To: Takashi Sakamoto <o-takashi@sakamocchi.jp>
Subject: Re: [PATCH] firewire: core: mask previous entry's type bits when
 looking for leaf
Message-ID: <ZbNyHg3TTWpjiieI@iguana.24-8.net>
References: <ZbJQ0JdbGixJouvn@iguana.24-8.net>
 <20240126011705.GA22564@workstation.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240126011705.GA22564@workstation.local>
X-Pobox-Relay-ID: D6B655E4-BC27-11EE-8FCE-A19503B9AAD1-07713566!pb-smtp21.pobox.com
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Jan 26, 2024 at 10:17:05AM +0900, Takashi Sakamoto
 wrote: > Would I request you to update the API documentation of
 fw_csr_string()
 > as well and send the renewed patch as take 2? > > > I have [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [173.228.157.53 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rTHuE-00043g-OV
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

On Fri, Jan 26, 2024 at 10:17:05AM +0900, Takashi Sakamoto wrote:
> Would I request you to update the API documentation of fw_csr_string()
> as well and send the renewed patch as take 2?
> 
> 
> I have a mixed feeling about the change, but I'll finally accept it since
> we face the exception against documentation.
> 
> As you know, in Annex A of document for configuration ROM of AV/C
> device[1], we can see the legacy layout of configuration ROM (page 22).
> In the layout, the descriptor leaf entry for vendor name locates after
> the immediate value entry for vendor ID, then the directory entry for
> vendor directory locates. However, in the case of Sony DVMC-DA1, the
> descriptor leaf entry locates after the directory entry. It is an
> exception.

Hi Takashi,

Thank you for your review and feedback.

After checking the 1394TA Configuration ROM document again, I agree that 
the leaf entry for vendor name should be after an immediate value entry 
according to this standard. The DVMC-DA1 does not conform. We should 
consider its configuration ROM format to be another variation of the 
legacy format. This variation is not mentioned in Annex A.

I will update the API documentation of fw_csr_string() and send a 
revised patch.

-- Adam


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
