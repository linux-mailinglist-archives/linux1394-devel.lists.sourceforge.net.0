Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D9E016EB688
	for <lists+linux1394-devel@lfdr.de>; Sat, 22 Apr 2023 03:01:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1pq1cZ-0000LK-CR;
	Sat, 22 Apr 2023 01:01:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1pq1cX-0000LB-Et
 for linux1394-devel@lists.sourceforge.net;
 Sat, 22 Apr 2023 01:00:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DmZYQOcjI9X1MlTPJID4t2dqX+m8gwiemfjaXtMMb/g=; b=IlBMJO5wP0gX3F7aifiZOZGHYl
 8UmFUFEEe7+2Dda8sv0Eixoasj6xxfhtIji1b2g/0eOQIIOkeKFDjroPqk3vzauyDikICJ/47oGM5
 oRMba6a/iSUTtGPChyUQgnX15IxzyQs4IGhBRhMqq0TDsaJNnxVpSmwJ0Asbf//mg8Us=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=DmZYQOcjI9X1MlTPJID4t2dqX+m8gwiemfjaXtMMb/g=; b=J
 2mpxIlQJHGVYLUyWJ+5B112jYvrjtaHQcpTruhxPTn5qIG0gg26ra9flG0AssYklGwROHgFa4kR1D
 D6NGsZNnYSuEOSI/naIR4UiE/BXgtMQQYW2a4TfRlKYSdcaz7NRkST4JxIEu9JqZOKgbdHf0h5+2K
 gCiwjLPWzKfA/vcg=;
Received: from out1-smtp.messagingengine.com ([66.111.4.25])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pq1cE-0001uu-81 for linux1394-devel@lists.sourceforge.net;
 Sat, 22 Apr 2023 01:00:46 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.nyi.internal (Postfix) with ESMTP id EEA695C0069;
 Fri, 21 Apr 2023 21:00:30 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Fri, 21 Apr 2023 21:00:30 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:message-id:mime-version:reply-to:sender:subject
 :subject:to:to; s=fm3; t=1682125230; x=1682211630; bh=DmZYQOcjI9
 X1MlTPJID4t2dqX+m8gwiemfjaXtMMb/g=; b=JdMGbf9hR64XfofQzxcOXp0+dz
 sbyml6ek6xHHLur8augMvXhh38KcTnTakxXo8loIju4yjmJPH+67HyU3pY4w0IpD
 pGxoVFOUOr6//J89W6+hIQa9M9SX+nr4DSqLMoixUCDpSYwzAyfpIDlbiyXh19lm
 HUC5FLLUhv4h6Y7+n+D7JQ4gtdQIiiHVrsmHX5HnXh7jEMs/wR9sfO94LOUgvRDK
 AI10XNZ6j9oRZBTAviIgwTm0BQS3lK2sT1WbCCnoLh3Sqln7jdwFIIGVtK5WqE1y
 I3olRQQDYt9tiXvZJNMm2SqP+tEF0vIQ2B7ecTlwPE4zYsrkxzyaLUal3reQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:message-id
 :mime-version:reply-to:sender:subject:subject:to:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
 1682125230; x=1682211630; bh=DmZYQOcjI9X1MlTPJID4t2dqX+m8gwiemfj
 aXtMMb/g=; b=I/RCgNJev6/hpflXVpjZPuZmrfjUL7CSTbJ8L8yH5fbM4rCHm//
 9sfPvUJdW2wMBBOAfV8ooUUWA2jymPAhu/CkJXTMOJQpcyiL70QREy29id2VgS25
 W55eRnsAPHJ36KAPLIh70m4+iUWS0yALatHlNI98cUscMw2vbiJYrp0vDwz4Ry7K
 vRiIZpgBAuMgnnfbiexie1HVWG2FMofGmwGGnJthN6QklqT9HuHyaeUeGHV9JXDt
 ILgEiwQ7+FzHld/3gMxjlXXyz34Wd7XUYPDkhYivjJYba92VFXbYFdySQ2bWJuSG
 rZy1HmNYYKKM4nVZscmBJ9xL7C/77v1nAfQ==
X-ME-Sender: <xms:rjFDZG8Km6RwZ_wtyVSh6DXtkzgA60rKP5-BvzTA33fw_MmChH86YQ>
 <xme:rjFDZGtHrYk2vGUqMKFTtxIj-KMZYmZsJfBKinQ5wgh9JpbHbrBsV0fr4QQqmHyaQ
 Q3k90Udv90F7XcQJDU>
X-ME-Received: <xmr:rjFDZMDi9eTDRn8k_FxfbEimFRNl7gjPqNbGGUZrNzTBrJNkPST25X9NFGYkYx3XgXyTbkuRpsbaR8Isw2heLwR0-w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrfedthedggeduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvvefukfggtggusehttdertd
 dttddvnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeetfeeiteefve
 egvdfggeffheetleejkeekleeugeffffdtgfdtteetkeevvddvgfenucffohhmrghinhep
 khgvrhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrg
 hilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:rjFDZOd3TTRFkz4NDV0Iqic4i3FwWsTTGj6ZAiZ3CXoUbZBzyCVHAw>
 <xmx:rjFDZLNb7fXhKubAjwR2jCPX8WXgbz4vHyV3DsfzJalP08GEiS3QPw>
 <xmx:rjFDZIl5XTpBZVaX2PyV07JjzTd0Yjr6JH23_FGCeBm11DcPUxDUwA>
 <xmx:rjFDZB35LsRFCD8YOIy2DA9yG1c1D9MrWdWsK52cUbIUjtVkboN2sQ>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 21 Apr 2023 21:00:29 -0400 (EDT)
Date: Sat, 22 Apr 2023 10:00:27 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: clemens@ladisch.de
Subject: linux-firewire-utils in git.kernel.org?
Message-ID: <20230422010027.GA56586@workstation>
Mail-Followup-To: clemens@ladisch.de, cladisch@googlemail.com,
 linux1394-devel@lists.sourceforge.net
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Clemens, It takes a bit long time since I see you in open
 list last time. I wish you are still of good cheer. I decide to take over
 maintenance of Linux FireWire subsystem[1] and I'm preparing stuffs for the
 work with help of kernel.org administrators. If thing goes well, I'll start
 my task in next merge wind [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.25 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.25 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1pq1cE-0001uu-81
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
Cc: linux1394-devel@lists.sourceforge.net, cladisch@googlemail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi Clemens,

It takes a bit long time since I see you in open list last time. I wish
you are still of good cheer.

I decide to take over maintenance of Linux FireWire subsystem[1] and I'm
preparing stuffs for the work with help of kernel.org administrators. If
thing goes well, I'll start my task in next merge window for Linux kernel
v6.4.

Well, if you don't mind, let us move the upstream of your
linux-firewire-utils? I already prepared repository directories for
utilities of Linux 1394[2]. Your software would locates under the directory.

In the case, I can maintain your software on behalf of you if you don't
mind. Especially, I need new version of the software including crpp
written by Python 3 for my work.

I'm glad if receiving any of your reply.


[1] https://lore.kernel.org/lkml/20230306035814.78455-1-o-takashi@sakamocchi.jp/
[2] https://git.kernel.org/pub/scm/utils/ieee1394/

Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
